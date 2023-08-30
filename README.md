# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

# Iteration 1
## CRUD
### User Story 1, aquarium Index
For each aquarium table
As a visitor
When I visit '/aquariums'
Then I see the name of each aquarium record in the system

### User Story 2, aquarium Show
As a visitor
When I visit '/aquariums/:id'
Then I see the aquarium with that id including the aquarium's attributes
(data from each column that is on the aquarium table)

### User Story 3, log
 Index
As a visitor
When I visit '/log_table_name'
Then I see each log in the system including the log's attributes
(data from each column that is on the log table)

### User Story 4, log
 Show
As a visitor
When I visit '/log_table_name/:id'
Then I see the log with that id including the log's attributes
(data from each column that is on the log table)

### User Story 5, aquarium log Index
As a visitor
When I visit '/aquariums/:aquarium_id/log_table_name'
Then I see each log that is associated with that aquarium with each log's attributes
(data from each column that is on the log table)

ActiveRecord
### User Story 6, aquarium Index sorted by Most Recently Created 

As a visitor
When I visit the aquarium index,
I see that records are ordered by most recently created first
And next to each of the records I see when it was created
[ ] done

### User Story 7, aquarium log Count

As a visitor
When I visit a Aquarium's show page
I see a count of the number of Logs associated with this Aquarium
Usability
[ ] done

### User Story 8, log Index Link

As a visitor
When I visit any page on the site
Then I see a link at the top of the page that takes me to the log
 Index
[ ] done

### User Story 9, aquarium Index Link

As a visitor
When I visit any page on the site
Then I see a link at the top of the page that takes me to the aquarium Index
[ ] done

### User Story 10, aquarium log
 Index Link

As a visitor
When I visit a aquarium show page ('/aquariums/:id')
Then I see a link to take me to that aquarium's `log
_table_name` page ('/aquariums/:id/log
_table_name')

## Iteration 2
CRUD
[ ] done

### User Story 11, aquarium Creation 

As a visitor
When I visit the aquarium Index page
Then I see a link to create a new aquarium record, "New aquarium"
When I click this link
Then I am taken to '/aquariums/new' where I  see a form for a new aquarium record
When I fill out the form with a new aquarium's attributes:
And I click the button "Create aquarium" to submit the form
Then a `POST` request is sent to the '/aquariums' route,
a new aquarium record is created,
and I am redirected to the aquarium Index page where I see the new aquarium displayed.
[ ] done

### User Story 12, aquarium Update 

As a visitor
When I visit a aquarium show page
Then I see a link to update the aquarium "Update aquarium"
When I click the link "Update aquarium"
Then I am taken to '/aquariums/:id/edit' where I  see a form to edit the aquarium's attributes:
When I fill out the form with updated information
And I click the button to submit the form
Then a `PATCH` request is sent to '/aquariums/:id',
the aquarium's info is updated,
and I am redirected to the aquarium's Show page where I see the aquarium's updated info
[ ] done

### User Story 13, Aquarium log
 Creation 

As a visitor
When I visit a Aquarium Logs Index page
Then I see a link to add a new adoptable log
 for that Aquarium "Create log
"
When I click the link
I am taken to '/Aquariums/:aquarium_id/log
_table_name/new' where I see a form to add a new adoptable log

When I fill in the form with the log
's attributes:
And I click the button "Create log
"
Then a `POST` request is sent to '/aquariums/:aquarium_id/log
_table_name',
a new log
 object/row is created for that aquarium,
and I am redirected to the aquarium log
s Index page where I can see the new log
 listed
[ ] done

### User Story 14, log
 Update 

As a visitor
When I visit a log
 Show page
Then I see a link to update that log
 "Update log
"
When I click the link
I am taken to '/log
_table_name/:id/edit' where I see a form to edit the log
's attributes:
When I click the button to submit the form "Update log
"
Then a `PATCH` request is sent to '/log
_table_name/:id',
the log
's data is updated,
and I am redirected to the log
 Show page where I see the log
's updated information
ActiveRecord
[ ] done

### User Story 15, log
 Index only shows `true` Records 

As a visitor
When I visit the log
 index
Then I only see records where the boolean column is `true`
[ ] done

### User Story 16, Sort aquarium's log
ren in Alphabetical Order by name 

As a visitor
When I visit the aquarium's log
ren Index Page
Then I see a link to sort log
ren in alphabetical order
When I click on the link
I'm taken back to the aquarium's log
ren Index Page where I see all of the aquarium's log
ren in alphabetical order
Usability
[ ] done

### User Story 17, aquarium Update From aquarium Index Page 

As a visitor
When I visit the aquarium index page
Next to every aquarium, I see a link to edit that aquarium's info
When I click the link
I should be taken to that aquarium's edit page where I can update its information just like in User Story 12
[ ] done

### User Story 18, log
 Update From log
s Index Page 

As a visitor
When I visit the `log
_table_name` index page or a aquarium `log
_table_name` index page
Next to every log
, I see a link to edit that log
's info
When I click the link
I should be taken to that `log
_table_name` edit page where I can update its information just like in User Story 14

## Iteration 3
CRUD
[ ] done

### User Story 19, aquarium Delete 

As a visitor
When I visit a aquarium show page
Then I see a link to delete the aquarium
When I click the link "Delete aquarium"
Then a 'DELETE' request is sent to '/aquariums/:id',
the aquarium is deleted, and all log
 records are deleted
and I am redirected to the aquarium index page where I no longer see this aquarium
[ ] done

### User Story 20, log
 Delete 

As a visitor
When I visit a log
 show page
Then I see a link to delete the log
 "Delete log
"
When I click the link
Then a 'DELETE' request is sent to '/log
_table_name/:id',
the log
 is deleted,
and I am redirected to the log
 index page where I no longer see this log

ActiveRecord
[ ] done

### User Story 21, Display Records Over a Given Threshold 

As a visitor
When I visit the aquarium's log
ren Index Page
I see a form that allows me to input a number value
When I input a number value and click the submit button that reads 'Only return records with more than `number` of `column_name`'
Then I am brought back to the current index page with only the records that meet that threshold shown.
Usability
[ ] done

### User Story 22, aquarium Delete From aquarium Index Page 

As a visitor
When I visit the aquarium index page
Next to every aquarium, I see a link to delete that aquarium
When I click the link
I am returned to the aquarium Index Page where I no longer see that aquarium
[ ] done

### User Story 23, log
 Delete From log
s Index Page 

As a visitor
When I visit the `log
_table_name` index page or a aquarium `log
_table_name` index page
Next to every log
, I see a link to delete that log

When I click the link
I should be taken to the `log
_table_name` index page where I no longer see that log


## Extensions
[ ] done

### Extension 1: Sort aquariums by Number of log
ren 

As a visitor
When I visit the aquariums Index Page
Then I see a link to sort aquariums by the number of `log
_table_name` they have
When I click on the link
I'm taken back to the aquarium Index Page where I see all of the aquariums in order of their count of `log
_table_name` (highest to lowest) And, I see the number of log
ren next to each aquarium name
[ ] done

### Extension 2: Search by name (exact match)

As a visitor
When I visit an index page ('/aquariums') or ('/log
_table_name')
Then I see a text box to filter results by keyword
When I type in a keyword that is an exact match of one or more of my records and press the Search button
Then I only see records that are an exact match returned on the page
[ ] done

### Extension 3: Search by name (partial match)

As a visitor
When I visit an index page ('/aquariums') or ('/log
_table_name')
Then I see a text box to filter results by keyword
When I type in a keyword that is an partial match of one or more of my records and press the Search button
Then I only see records that are an partial match returned on the page

This functionality should be separate from your exact match functionality.