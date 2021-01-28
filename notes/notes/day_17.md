# Day 17 Notes

## Group call - Karsten_Katrina_Pete_Tom
* Mocking
* Moba
* Civ

## SDL
#### Step 3 Bookmark
##### Restful URL's
* Olden days no structure for URLs
* Roy Fielding published a doctorate on REST and changed the structure of the internet forever
* REST - Representational State Transfer
* Now URLs aren't vague strings but mapped to a central resource
* Use HTTP for specific actions mapped to CRUD (restaurants is the resource below)
 - CREATE - POST /restaurants
 - READ - GET /restaurants/123
 - UPDATE - PATCH /restaurants/123
 - DELETE - DELETE /restaurants/123

When you want to write a web app, you need a few more routes on top of the basic create, read, update and delete. You need:
* A route for listing all the records for a certain resource (e.g. all the restaurants).
* A route to show a web form for entering the details of a new record.
* A route to show a web form for entering the new details of an existing record.

Rails has a set of conventions for what URLs to use for these extra things:
```
 Verb    URI Pattern            Controller#action
 ------  ---------------------  ------------------
 GET     /restaurants           restaurants#index
 POST    /restaurants           restaurants#create
 GET     /restaurants/new       restaurants#new
 GET     /restaurants/:id/edit  restaurants#edit
 GET     /restaurants/:id       restaurants#show
 PATCH   /restaurants/:id       restaurants#update
 PUT     /restaurants/:id       restaurants#update
 DELETE  /restaurants/:id       restaurants#destroy
 ````
How to seperate into MVC
 ```
 | Component   | Responsibility                                | Refactor                                |
 |------------ |---------------------------------------------  |---------------------------------------- |
 | Model       | Encapsulate logic with relevant data          | Encapsulate bookmark data in a class    |
 | View        | Display the result to a user                  | Show the bookmark data in a list        |
 | Controller  | Get data from the model and put in the view   | Render bookmark data into to the view   |
 ```

 [Key SQL commands](https://github.com/makersacademy/course/blob/master/bookmark_manager/walkthroughs/06.md)
