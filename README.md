# ShuttlerockSharedConfig

Update shared config for Shuttlerock's projects:
```
  .rubocop.yml
  .codeclimate.yml
  .eslintrc
  .stylelintrc
   Dangerfile
   env_list.yml
   .env.example
```
## Installation in Ruby application

Add this line to your application's Gemfile:

```ruby
gem 'shuttlerock_shared_config'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shuttlerock_shared_config

## Usage in Ruby application

    $ rake shuttlerock_shared_config:update_codeclimate  # Update .codeclimate.yml
    $ rake shuttlerock_shared_config:update_eslint       # Update .eslint.yml
    $ rake shuttlerock_shared_config:update_rubocop      # Update .rubocop.yml
    $ rake shuttlerock_shared_config:update_stylelintrc  # Update .stylelintrc
    $ rake shuttlerock_shared_config:update_dangerfile   # Update Dangerfile and create doc/      env_list.yml
    $ rake shuttlerock_shared_config:update              # Update all

## Installation in JS application
    $ npm install shuttlerock_shared_config

Add ' "update_eslintrc": "npx update_eslintrc" ' to yours package.json:

```
scripts: {
...
"update_eslintrc": "npx update_eslintrc"
...
}
```
## Usage in JS application

    $ npm run-script update_eslintrc
    or
    $ yarn run update_eslintrc

## How to publish

1. Update gem's version:
 - For RubyGems [here](https://github.com/Shuttlerock/shuttlerock_shared_config/blob/master/lib/shuttlerock_shared_config/version.rb)
 - For NPM [here](https://github.com/Shuttlerock/shuttlerock_shared_config/blob/master/package.json)
2. Commit and push changes to Github
2. Add tag with new version and push to Github
```
 $ git tag -a vX.X.X -m "vX.X.X"
 $ git push origin vX.X.X
```  

## How to Add npm-owner to NPM Package

You can read about this [here](https://docs.npmjs.com/cli/owner).

## How to set up danger.gem
Add to .circleci/config.yml:

```danger:
    <<: *defaults
    steps:
      - restore_cache:
          key: v1-repo-{{ .Environment.CIRCLE_SHA1 }}
      - restore_cache:
          key: v1-bundle-{{ checksum "Gemfile.lock" }}
      - run: bundle --path vendor/bundle
      - run: bundle exec danger
```
Add environment variables to doc/env_list.yml

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ShuttlerockSharedConfig project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/shuttlerock_shared_config/blob/master/CODE_OF_CONDUCT.md).
