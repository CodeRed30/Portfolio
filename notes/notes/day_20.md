# Day 20 Notes

## Group call - Karsten_Katrina_Pete_Tom
* Steak
* Games
* Fruit
* Map weekday to weekend

## SDL
#### User Stories
```
STANDARD
I want to post a message (peep) to chitter

I want to see all peeps in reverse chronological order

I want to see the time at which it was made

I want to sign up for Chitter

HARDER

I want to log in to Chitter

I want to log out of Chitter

ADVANCED

I want to receive an email if I am tagged in a Peep
```

#### Week day to week end mapping
| # | Bookmarks | Chitter | Notes | User Story | [x] |
| --- | --- | ---  | --- | --- | --- |
| 1 | Creating User Stories | Draw domain model for chitter | | setup | [x] |
| 2 | Setting up a Web Project | Set up using web_app_process doc | | setup | [x] |
| 3 | Viewing bookmarks | Making sure app works without database | need to return to this to ensure the reverse chronology once timestamp is added to dataset | see* | [x] |
| 4 | Setting up a Database | Set up chitter database | Maybe make the test on while you are there | setup | [x] |
| 5 | Creating your First Table | Table of peeps | | setup | [x] |
| 6 | Manipulating Table Data | Add some basic data to peeps table | | setup | [x] |
| 7 | Interacting with Postgres from Ruby | Using and setting up PG | | setup | [x] |
| 8 | Upgrading your Toolset | Connect to table plus | | setup | [x] |
| 9 | Setting up a Testing Environment | Add if/else to make sure testing uses test database | Create script now??? | setup | [x] |
| 10 | Creating bookmarks | Adding a new peep | | post | [x] |
| 11 | Wrapping Database data in program objects | turn Peeps into objects | | setup | [x] |
| 12 | Deleting bookmarks | deleting peeps | is this necessary? | edge | [] |
| 13 | CRUD | edit a peep | | edge | [] |
| 14 | Extracting a Database Setup object | script for testing | Should have created earlier | setup | [x] |
| 15 | Validating bookmarks |  | What will you need to validate??? - log in email is an email, anything in peep? | ?? | [] |
| 16 | One to Many Relationships | Reply to a peep | | edge | [] |
| 17 | Many to Many Relationships | Filter peeps by user, Add like to a peep | | edge | [] |
| 18 | Registration | Sign up a new user | | sign up | [] |
| 19 | Authentication | Sign in & out | | sign in and out | [] |

#### Domain Model
![Domain Model](../images/chitter_domain_model.svg)
