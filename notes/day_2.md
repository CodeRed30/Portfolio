# Day 2 Notes

## Group call - Karsten_Katrina_Pete_Tom

#### Charter
* Speak our mind
* Be honest
* Chatham House rules
* Assume nobody is out to cause offence
* Don't take it personally - we are trying to make each other better
* All criticism to be constructive
* No question is a stupid question

#### Top 5 tips
* Try to enjoy it
* Don't copy code you don't understand
* Trust the process
* Work SMART rather than working too hard
* Be accountable to your plan

## [Debugging Workshop](https://github.com/makersacademy/skills-workshops/tree/master/week-1/debugging_1)
* Focus on the process, no need to finish
#### Breakout session  - Oscar, Louis, Charlie and Katrina
###### Reflection
* Be more methodical in my process
* Check every piece of code before you presume you know the error
* Don't always rely on the tests

## Meditation
* Focused attention - Micro recovery - bringing your focus back, building concentration and better internal dialogue
* Open attention - mindfulness, connecting with our sense and bodies


## Pairing - Boris Bikes Day 1 - Dan
#### User story
* "Describes one thing a program is expected to do, from the perspective of somebody using that program."
* Clients requirements break down into many User Stories
* Developers translate User Stories into a functional system

#### [Domain model](http://sjmog.github.io/posts/502_domain-modelling/)
"Domain models give a **high-level** overview of the entities that make up a particular area of interest, and the links between them."

eg.
```
As a person,
So that I can use a bike,
I'd like to get a bike from a docking station.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```
becomes

| Objects | Messages |
| --- | --- |
| Person |
| Bike | working? |
| DockingStation | release_bike |


#### Feature test
Think about how your objects and messages

#### [Four principles of OOP](https://www.freecodecamp.org/news/object-oriented-programming-concepts-21bb035f7260/)
* Encapsulation -
* Abstraction -
* Inheritance -
* Polymorphism -

#### Stack trace
* Name of error
* Path of error
* Line number of error
Exception documentation is rubies name for errors

#### Require in IRB
```
$ irb
2.2.2 :001 > require './lib/docking_station'
 => true
```

#### Error messages
* A new error message is a cause for celebration - meaning more information to help solve the issue.

#### [RSpec Example](https://relishapp.com/rspec/rspec-core/v/3-2/docs/subject/implicitly-defined-subject)
```
require 'docking_station'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end
end
```

#### [RSpec one-liner syntax](https://relishapp.com/rspec/rspec-core/v/3-2/docs/subject/one-liner-syntax)
```
require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
end
```
## Finished Day 1 at Challenge 8
