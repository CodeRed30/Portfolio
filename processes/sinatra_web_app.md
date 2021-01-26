## Process for web app set up
##### Initial set up
1. Start a new project directory **Master**
2. Run ```bundle init``` (which creates the ```Gemfile```)
3. Add to the ```Gemfile```
```ruby
source 'https://rubygems.org'
gem 'rspec'
gem 'sinatra'
```
4. Run ```bundle```
5. Create ```app.rb``` in the root
6. Set up [sinatra](http://sinatrarb.com/intro.html#Sinatra::Base%20-%20Middleware,%20Libraries,%20and%20Modular%20Apps) (scroll down to 'Serving Modular Application') in the ```app.rb```
```ruby
require 'sinatra'
class *Master*  < Sinatra::Base
  get '/' do
  'Hello World!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
```
7. Add ```config.ru``` file for rackup
```ruby
require_relative "./app"
run *Master*
```
8. Run ```rackup``` and test the ```localhost:XXXX``` for ```Hello World!```
9. Run ```rspec --init``` to initialize rspec files
10. Run ```rspec``` and check ```0 examples, 0 failures```
* *optional* in ```.rspec``` add ```--format documentation```

##### Testing set up
1. In ```Gemfile``` add ```gem 'capybara'```
2. Run ```bundle```
3. In ```spec_helper.rb``` add [capybara](https://github.com/teamcapybara/capybara/blob/master/README.md#using-capybara-with-rspec) config
```ruby
ENV['RACK_ENV'] = 'test'
# require our Sinatra app file
require File.join(File.dirname(__FILE__), '..', 'app.rb')
require 'capybara'
require 'capybara/rspec'
require 'rspec'
# tell Capybara about our app class
Capybara.app = *Master*
```
4. Add ```spec/features/``` folder for feature test
5. For a basic infrastructure test create a spec file ```./spec/features/basic_setup_spec.rb```
6. Write a basic test
```ruby
feature 'Testing infrastructure' do
    scenario 'Can run app and check page content' do
      visit('/')
      expect(page).to have_content 'Hello Katrina!'
    end
end
```
7. Run ```rspec``` and it should return ```1 example, 1 failure```
8. Update ```app.rb``` with ```Hello Katrina!```
9. Run ```rspec``` and it should return ``` 1 example, 0 failures```

##### Next steps
* Create a ```views``` file in the root
* Create an ```./views/index.erb``` file
* Use on the ```'/'``` page
* Create unit tests in the ```./spec``` folder
* Create a ```./lib``` folder for your classes and methods
* Create a ```./spec/unit``` folder for your unit tests
* [SimpleCov install](https://github.com/simplecov-ruby/simplecov)
* In ```Gemfile``` add ```gem 'simplecov', require: false, group: :test```
* At the **very** top of spec_helper.rb
```ruby
require 'simplecov'
SimpleCov.start
```
* Potential Gemfile grouping
```ruby
gem "capybara", require: false, group: :test
gem "rspec", require: false, group: :test
gem "simplecov", require: false, group: :test
gem "simplecov-console", require: false, group: :test
```

#### Useful resources for building Web app
* [Capybara Cheatsheet 1](https://thoughtbot.com/upcase/test-driven-rails-resources/capybara.pdf)
* [Capybara Cheatsheet 2](https://codecabulary.launchacademy.com/learn-test-driven-development/rspec/capybara-cheat-sheet)
* [Sinatra README](http://sinatrarb.comintro.html#Sinatra::Base%20%20Middleware,%20Libraries,%20and%20Modular%20Apps)
* [Better Specs](https://www.betterspecs.org/#all)
