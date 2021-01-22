# Day 15 Notes

## Group call - Karsten_Katrina_Pete_Tom
* Games night
* SDL plan
* Git restore or Git reset --Hard

## SDL
#### [How the internet works pt.2](https://www.youtube.com/watch?v=FTAPjr7vgxE)
###### What does the server world look like?
* Every website has a server config - cPanel
* You need a webserver program running to access your IP - but dangerous so handled by the servers
* Headers from the request knows where in the server too look
* One server can handle multiple websites
* Basic website server - Server => Apache(Web server) => Filesytem
* Web app server - Server => Web App => Database for user => index template for home page including user's info
* For multiple servers (scaling) - have multiple machines doing the exact same thing with different IP addresses. Then use a load balancer for the DNS redirect and the load balancer will spread the load.
* For multiple servers you can keep adding capacity by adding extra servers

#### Process for web app set up
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

#### Useful resources for building Web app
* [Capybara Cheatsheet 1](https://thoughtbot.com/upcase/test-driven-rails-resources/capybara.pdf)
* [Capybara Cheatsheet 2](https://codecabulary.launchacademy.com/learn-test-driven-development/rspec/capybara-cheat-sheet)
* [Sinatra README](http://sinatrarb.comintro.html#Sinatra::Base%20%20Middleware,%20Libraries,%20and%20Modular%20Apps)
* [Better Specs](https://www.betterspecs.org/#all)

#### [Blog on the 'Ready Position'](http://sjmog.github.io/posts/491_learning_to_learn_1/)
* Use a ready position like in playing a musical instrument to help start a process of understanding
* Create processes for everything you are working on
* Make sure you step away from the computer and go through the process to fully understand what you are working on

>>
For instance; a bullet-point list for self-examination when debugging could look something like this:
* Have I identified the single place from which the bug is arising?
* Have I identified the line number on which the bug occurs?
* Have I identified the exact structure which is causing the problem?
* What modifications could be required to eliminate this bug?
* What modifications could I make to ensure this bug is unlikely to happen again?
* What modifications to the way I write code could I make to ensure I don't make bugs like this in future?
>>

#### Battle walkthrough review
* Almost every Capybara feature test involves this process:
 - What does the user have to do?
 - What does the user expect to see?
* Use these questions every time you write a Capybara test
*

#### Class extraction
* https://github.com/makersacademy/skills-workshops/blob/master/practicals/object_oriented_design/encapsulation.md
* https://github.com/makersacademy/course/blob/master/oystercard/14_no_touch_in_or_out.md
* The responsibility of my class is _____ ‘and ____’
* xit 'does something' do - makes the test not run
* p/puts
 - ‘The ____ method is being run’
 - The value of _____ is ______
 - Entered if statement 1_______
