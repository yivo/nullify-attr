# encoding: UTF-8
# frozen_string_literal: true

require 'active_support/concern'
require 'active_support/lazy_load_hooks'

module NullifyAttr
  module Extension
    extend ActiveSupport::Concern

    module ClassMethods
      def nullify(*attributes)
        before_validation attributes.extract_options! do
          attributes.each do |attribute|
            case attribute
              when Regexp
                self.class.column_names.each do |column_name|
                  if column_name.respond_to?(:match?) ? column_name.match?(attribute) : column_name =~ attribute
                    send("#{column_name}=", nil)
                  end
                end
              else
                send("#{attribute}=", nil)
            end
          end
          nil
        end
      end
    end
  end
end

ActiveSupport.on_load(:active_record) { ActiveRecord::Base.include NullifyAttr::Extension }
