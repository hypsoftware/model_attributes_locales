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

    $ bundle install

## Usage

After installing the gem just open your projects Rails Console and run

```ruby
  ModelAttributesLocales.generate
```

This command will create a file on your /config/locales/ folder with the part for your model attributes.

You should copy and paste it to your locales file.

Then you can delete the file as it shouldn't be needed anymore.

## Sample Output

For a project with Bookmarks, Comments, Tags and Groups, for example, it outpus the following yaml code:
```yaml
activerecord:
 comment:
   id:
   comment:
   created_at:
   updated_at:
   bookmark_id:
   user_id:
 bookmark:
   id:
   name:
   description:
   url:
   created_at:
   updated_at:
   group_id:
   user_id:
 tag:
   id:
   name:
   created_at:
   updated_at:
   group_id:
 group:
   id:
   name:
   description:
   created_at:
   updated_at:
   avatar_file_name:
   avatar_content_type:
   avatar_file_size:
   avatar_updated_at:
   color:
   comment_permission:
   tag_permission:
```
Now, all you have to do is paste it into your locales file an translate it. Enjoy! :)

Be advised about the identation of the file. The **ativerecord node** should come inside the language node.

## TODO

* Add a rake task to replace the Rails Console command.
* Question the user what is the translation for each word.
* Add automatic translations, given a determined language

## Bugs

If yoy find any bugs and/or have any sugestions please feel free to open a Issue to let us know about it!

## Contributing

1. Fork it ( https://github.com/[my-github-username]/model_attributes_locales/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
