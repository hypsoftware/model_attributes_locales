require "model_attributes_locales/version"

module ModelAttributesLocales
  # Your code goes here...
  require 'model_attributes_locales/railtie' if defined? ::Rails::Railtie

  def generate
    puts "Gen"
  end

  def self.hello
    puts "hi there"
  end
end
