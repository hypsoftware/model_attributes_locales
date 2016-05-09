require "model_attributes_locales/version"
require 'yaml'

module ModelAttributesLocales
  # Your code goes here...

  require 'model_attributes_locales/railtie' if defined? ::Rails::Railtie

  def self.generate
    text = "  activerecord:"
    text += "\n    models:"
    ActiveRecord::Base.connection.tables.map do |model|
      begin
        text += "\n      " + model.singularize + ":"
      rescue
        #puts "No Class"
      end
    end
    text += "\n    attributes:"
    ActiveRecord::Base.connection.tables.map do |model|
      begin
        m = model.classify.constantize
        text += "\n      " + model.singularize + ":"
        m.column_names.each do |name|
          text += "\n        " + name + ":"
        end

      rescue
        #puts "No Class"
      end
    end
    target = "#{Rails.root}/config/locales/model_attributesss_locales.yml"
    File.open(target, "w") {|f| f.write text } #Store

  end

end
