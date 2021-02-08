# JavaScript

## Intro
Whatever is put inside the brackets will get printed unless it is commented out
```JavaScript
/// Comments go here
console.log(/*OR HERE!*/ 5); /// or here
/*
or could
go on
forever
*/
```
## Lesson 1
* Data is printed, or logged, to the console, a panel that displays messages, with ```console.log()```.
* We can write single-line comments with // and multi-line comments between ```/*``` and ```*/```.
* There are 7 fundamental data types in JavaScript: strings, numbers, booleans, null, undefined, symbol, and object.
* Numbers are any number without quotes: ```23.8879```
* Strings are characters wrapped in single or double quotes: ```'Sample String'```
The built-in arithmetic operators include ```+```, ```-```, ```*```, ```/```, and ```%```.
* Objects, including instances of data types, can have properties, stored information. The properties are denoted with a . after the name of the object, for example: ```'Hello'.length```.
* Objects, including instances of data types, can have methods which perform actions. Methods are called by appending the object or instance with a period, the method name, and parentheses. For example: ```'hello'.toUpperCase()```.
We can access properties and methods by using the ```.```, dot operator.
Built-in objects, including ```Math```, are collections of methods and properties that JavaScript provides.

## Lesson 2
* Variables hold reusable data in a program and associate it with a name.
* Variables are stored in memory.
* The ```var``` keyword is used in pre-ES6 versions of JS.
* ```let``` is the preferred way to declare a variable when it can be reassigned, and ```const``` is the preferred way to declare a variable with a constant value.
* Variables that have not been initialized store the primitive data type ```undefined```.
* Mathematical assignment operators make it easy to calculate a new value and assign it to the same variable.
* The ```+``` operator is used to concatenate strings including string values held in variables
* In ES6, template literals use backticks ``` ` ``` and ```${}``` to interpolate values into a string.
* The typeof keyword returns the data type (as a string) of a value.

## Lesson 3
* An ```if``` statement checks a condition and will execute a task if that condition evaluates to ```true```.
* ```if...else``` statements make binary decisions and execute different code blocks based on a provided condition.
* We can add more conditions using ```else if``` statements.
* Comparison operators, including ```<```, ```>```, ```<=```, ```>=```, ```===```, and ```!==``` can compare two values.
* The logical and operator, ```&&```, or “and”, checks if both provided expressions are truthy.
* The logical operator ```||```, or “or”, checks if either provided expression is truthy.
* The bang operator, ```!```, switches the truthiness and falsiness of a value.
* The ternary operator is shorthand to simplify concise ```if...else``` statements.
* A ```switch``` statement can be used to simplify the process of writing multiple ```else if``` statements. The ```break``` keyword stops the remaining cases from being checked and executed in a ```switch``` statement.

## Lesson 4
* A function is a reusable block of code that groups together a sequence of statements to perform a specific task.

* A function declaration : ![Diagram showing the syntax of a function declaration](https://content.codecademy.com/courses/learn-javascript-functions/Diagram/declaration.svg)

* A parameter is a named variable inside a function’s block which will be assigned the value of the argument passed in when the function is invoked:

![JavaScript syntax for declaring a function with parameters](https://content.codecademy.com/courses/learn-javascript-functions/Diagram/function_parameters.svg)

* To call a function in your code:

![Diagram showing the syntax of invoking a function](https://content.codecademy.com/courses/learn-javascript-functions/Diagram/name.svg)

* ES6 introduces new ways of handling arbitrary parameters through default parameters which allow us to assign a default value to a parameter in case no argument is passed into the function.

* To return a value from a function, we use a return statement.

* To define a function using function expressions:
![defining a function expression](https://content.codecademy.com/courses/learn-javascript-functions/Diagram/expression.svg)

* To define a function using arrow function notation:
![alt](https://content.codecademy.com/courses/learn-javascript-functions/Diagram/arrow_notation.svg)

* Function definition can be made concise using concise arrow notation:
![comparing single line and multiline arrow functions](https://content.codecademy.com/courses/learn-javascript-functions/Diagram/return.svg)

## Lesson 5
* Scope is the idea in programming that some variables are accessible/inaccessible from other parts of the program.
* Blocks are statements that exist within curly braces {}.
* Global scope refers to the context within which variables are accessible to every part of the program.
* Global variables are variables that exist within global scope.
* Block scope refers to the context within which variables that are accessible only within the block they are defined.
* Local variables are variables that exist within block scope.
* Global namespace is the space in our code that contains globally scoped information.
* Scope pollution is when too many variables exist in a namespace or variable names are reused.

## Lesson 6
* Arrays are lists that store data in JavaScript.
* Arrays are created with brackets [].
* Each item inside of an array is at a numbered position, or index, starting at 0.
* We can access one item in an array using its index, with syntax like: myArray[0].
* We can also change an item in an array using its index, with syntax like myArray[0] = 'new string';
* Arrays have a length property, which allows you to see how many items are in an array.
* Arrays have their own methods, including .push() and .pop(), which add and remove items from an array, respectively.
* Arrays have many methods that perform different tasks, such as .slice() and .shift(), you can find documentation at the Mozilla Developer Network website.
* Some built-in methods are mutating, meaning the method will change the array, while others are not mutating. You can always check the documentation.
Variables that contain arrays can be declared with let or const. Even when declared with const, arrays are still mutable. However, a variable declared with const cannot be reassigned.
* Arrays mutated inside of a function will keep that change even outside the function.
* Arrays can be nested inside other arrays.
* To access elements in nested arrays chain indices using bracket notation.
