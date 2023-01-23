# Ruby/Sinatra Back End

I created this application to keep track of my current employees and there data. 
This application has a  React fronted that interacts with and API to preform CRUD actions.
 This app uses Active Record to interact with a Sinatra Backend.
---
## Models 
---
1. Companies - has_many employees

Companies has Read and Create CRUD capabilites.

- Read all companies
- Create a new Company
--- 
2. Employees - belongs_to companys.

Employees has full CRUD capabilities

- Read All employees
- Create new employee
- Update an employee
- Delete a company

---
[Front end Repo](https://github.com/tandog42/phase-3-front.git)