require "model_attributes_locales/version"

module ModelAttributesLocales
  # Your code goes here...
  require 'model_attributes_locales/railtie' if defined? ::Rails::Railtie

  def self.generate
    text = '\t activerecord:'
    ActiveRecord::Base.connection.tables.map do |model|
      begin
        m = model.classify.constantize
        text += '\t\t' + model.singularize + ":"
        m.column_names.each do |name|
          text += '\t\t\t' + name + ":"
        end
      rescue
        #puts "No Class"
      end
      target = "#{Rails.root}/config/locales/model_attributes_locales.yml}"
      puts "File Written: "
      File.open(target, "w") do |f|
        f.write(text)
      end
    end
  end

end
