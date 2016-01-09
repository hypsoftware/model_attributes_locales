require 'model_attributes_locales'

module ModelAttributesLocales
  class Railtie < Rails::Railtie
    railtie_name :model_attributes_locales

    def hello
      puts "hi there"
    end
  end
end
