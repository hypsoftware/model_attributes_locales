# ModelAttributesLocales

Have you haver needed to write a locales yml for your model attributes? Was it exhausting?

**Don't Worry!!**

This Gem will help you do that.

Now with a simple Rails Console command you can generate the stubs for all your models attributes! You only need to fill it in with your own translations!
## Installation

Add this line to your application's Gemfile:

```ruby
group :development do
  gem 'model_attributes_locales'
end
```

And then execute:

    $ bundle

## Usage

After installing the gem just open your projects Rails Console and run

```ruby
  ModelAttributesLocales.generate
```

This command will create a file on your /config/locales/ folder with the part for your model attributes.

You should copy and paste it to your locales file.

Then you can delete the file as it shouldn't be needed anymore.

## Sample Output


## TODO

* Add a rake task to replace the Rails Console command.
* Question the user what is the translation for each word.
* Add automatic translations, given a determined language

## Contributing

1. Fork it ( https://github.com/[my-github-username]/model_attributes_locales/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
