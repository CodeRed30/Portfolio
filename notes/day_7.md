# Day 7 Notes

## Group call - Karsten_Katrina_Pete_Tom
* Description of Encapsulation and Doubles
* RSpec knowledge and efficiency


## [Domain Modelling Workshop](https://github.com/makersacademy/skills-workshops/tree/master/week-2/domain_modelling_alternative)
* Domain - Constrained area - Universe the program is working in
* Modelling - representation of what will be, before creating it

```
As a coach,
So that I know who I am coaching,
I would like a student to have a name

As a coach,
So that I can track attendance,
I would like a student to sign in and sign out

As a coach,
So that I can deliver the course,
I would like to add a student to the cohort

As a coach,
So that I can see who is in my cohort,
I would like to list students in the cohort

As a coach,
So that I know how many students are in,
I would like to count how many students are signed in
```

| Nouns | Property or owner of property?    |
| - | - |
| Student | Owner (+property?) |
| Name | Property of student |
| Cohort | Owner |

| Actions | Owned by?    |
| - | - |
| Sign in | Student |
| Sign out | Student |
| Add a student | Cohort |
| List a student | Cohort |
| Count how many students are signed in | Cohort |

| Actions | Property it reads of changes |
| - | - |
| Sign in  | Attendance |
| Sign out | Attendance |
| Add a student | Student [ ] |
| List students | Cohort [ ] |
| Count how many students are signed in |  |

#### [Exercise with Ollie & Karsten](https://docs.google.com/document/d/1gnU-LAkpfbdoh3_5AXeIG95V-H_gTlzlwnBRdDQ81jc/edit)

```
As a librarian
So that the public can read my books
I would like a book to have a title and an author

As a librarian
So that the public has more variety
I would like to add a book to the library

As a librarian
So that the public knows all the books in the library
I would like to list all books in the library

As a librarian
So that I can know if a book needs to be replaced
I would like to be able to mark a book as damaged

As a librarian
So that I know how many books need to be replaced
I would like to count how many books are damaged in the library

As a librarian
So that the public know what books titles are written by their favourite author
I would like the library to list all book titles by specific author
```

| Nouns | Property or owner of property?    |
| - | - |
| Book | Owner |
| Title | Property |
| Author | Property |
| Library | Owner |

| Actions | Owned by?    |
| - | - |
| Add a book | Library |
| List all books | Library |
| Mark book as damaged | Book |
| Count how many books are damaged | Library |
| List all book titles by specific author | Library |

| Actions | Property it reads of changes |
| - | - |
| Add a book | books.add(book) |
| List all books | books.list |
| Mark a book as damaged | book.damaged |
| Count how many books are damaged | books.count_damaged |
| List all books by specific author | books.list_by_author(author)|


<table>
  <tr>
    <th>Class</th>
    <td>Book</td>
  </tr>
  <tr>
    <th>Properties (instance variables)</th>
    <td>title, author, damaged?</td>
  </tr>
  <tr>
    <th>Actions (methods)</th>
    <td>Mark book as damaged</td>
  </tr>
</table>

<table>
  <tr>
    <th>Class</th>
    <td>Library</td>
  </tr>
  <tr>
    <th>Properties (instance variables)</th>
    <td>books</td>
  </tr>
  <tr>
    <th>Actions (methods)</th>
    <td>add, list, count_damaged, lost_by_author/td>
  </tr>
</table>

```
Class Book
  Attr_reader :damaged, :author, :title

  def initialize(title, author)
    @title = title
    @author = author
    @damaged = false
  end

  def mark_damaged
    @damaged = true
  end
end

Class Library
  def initialize
    @books = [ ]
  end

  def add(book)
    @books << book
  end

  def list
    @books
  end

  def count_damaged
    damaged_books = books.map { |book| book.damaged }
    damaged_books.count
  end

  def list_by_author(author)
    books_by_author = books.map { |book| book.author == author }
  end
end
```

## SDL
#### Revision of OOP with Rich
* Encapsulation - Restrict access (read and write) to data to ensure the program is only used as designed
* SRP - Single responsibility principle - Easier to isolate issues as they occur
* DRY - Don't repeat yourself - Use a method to hold calculations


## Revision
#### RSpec breakdown
Set up
* What is needed to set up the test

Execute
* What code triggers the test

Verify
* How are you making sure you pass the test

#### Input/Output table using Boris Bikes

| Status | Public Method | Scenario | Input | Output
| - | - | - | - | - |
| ✅ | DockingStation#release | When there are working bikes | release() | bike |
| ⌛ | DockingStation#release | When there are none | release() | Error Message "Sorry, none available" |
| ✅ | DockingStation#release | When there are none working | release() | Error Message "Sorry, all are broken" |
| ✅ | DockingStation#dock | Below capacity | dock(bike) | [bike] |
| ✅ | DockingStation#dock | Above capacity | dock(bike) | Error Message "Sorry, full!" |
| ✅ | Bike#working? | When it is working | working? | true |
| ✅ | Bike#working? | When it is broken | working? | false |
| ✅ | Bike#report | When it is working | report | false |
| ✅ | Bike#report | When it is broken | report | false |
