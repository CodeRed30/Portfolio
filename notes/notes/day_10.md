# Day 10 Notes

## Revision
#### Simple stubs
You can stub out a method on any object (including a test double) by using allow:
```
allow(Object).to receive(:method).and_return(output)
```
[Walkthrough about Stubs, Mocks and Spies](https://thoughtbot.com/upcase/videos/stubs-mocks-spies-and-fakes)

## Group call - Karsten_Katrina_Pete_Tom

## SDL
#### [Steps for Class extraction 2.0](https://thoughtbot.com/upcase/videos/extract-class)
1. Instantiate the class you wish you had
2. Make a new empty class
3. Move a method over with action commented out
4. Copy over the tests and modify them as necessary
5. Make sure you are going back and forth!


#### Make a branch of your github repo the main
1. Use the option to set 'other' branch as your default branch for the repo.
2. To rename the 'other' branch to main you will have to delete the old main branch locally.
```
git branch -D main
```
3. Then you will need to delete your main branch in github too.
4. While in your 'other' branch do:
```
git checkout -b main
```
5. Delete the 'other' branch from there.
```
git branch -D other
```

## Job Profile questions to consider
* What were you doing before Makers?
* Why are you starting a career in software development?
* What do you value in your next job? (Values)
* What are you brilliant at, tech or otherwise? (Strengths)
* Do I have any preferences around location?
* Is there anything else you would like to tell the Partnerships Team about yourself that you haven't already mentioned?
* Why should a company hire me?
