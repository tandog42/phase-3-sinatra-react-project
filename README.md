# Ruby/Sinatra Back End

I created this application to keep track of my current employees and there data. 
This application has a  React fronted that interacts with and API to preform CRUD actions.
App uses Active Record to interact with a Sinatra Backend.

## Models 

1. Companys - has_many employees
2. Employees - belongs_to companys.

## Migrations

There are two migrations. 

1. CreateCompanies
Creates a table called companies with three columns company_name, city, state,

2. CreateEmployees
Creates a table called employees that has five columns first_name, last_name, position, salary and a company_id(foreign key)


## Seeds
