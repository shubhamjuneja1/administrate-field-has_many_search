# Administrate::Field::HasManySearch

A plugin to search through `has_many` associations in [thoughtbot's Administrate](https://github.com/thoughtbot/administrate) Rails engine.

## Usage

Add it to your `Gemfile`:

```ruby
gem 'administrate-field-has_many_search'
```

Run bundler to install:

```sh
bundle install
```

Add it to your Administrate dashboard, for instance:

```ruby
class PostDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    authors: Field::HasManySearch.with_options(class_name: 'User')
  }
# ...
```

With this, you should be good to go!

## Develop and Contribute

Fork and clone the repo. Install dependencies and run test using:

```sh
bundle install
bundle exec rake
```

Then, implement your feature/fix, [write a good commit message](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
and submit a pull request to this repository. If you only have some feedback or are unsure about how to do something, you're welcome to
submit an [issue](https://github.com/redrick/administrate-field-has_many_search/issues/new).

This is meant to be an welcoming and friendly place for collaboration. Therefore, all contributors are expected to adhere to the [Contributor Covenant Code of Conduct](CODE_OF_CONDUCT.md).

## License

It is licensed under the MIT license. See [LICENSE](LICENSE) for details.

## Screenshot

![Screenshot](https://user-images.githubusercontent.com/865364/167399301-49f7de4b-6240-4875-b509-6f354fe62503.png)

## Credits

I have to give much credit to [Fishbrain AB](https://fishbrain.com)
This was not only inspired, but shamelessly copy-pasted from
[here](https://github.com/fishbrain/administrate-field-belongs_to_search) for
convenience, many thanks guys :)
