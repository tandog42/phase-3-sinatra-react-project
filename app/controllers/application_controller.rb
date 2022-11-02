class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/employees' do
    employee = Employee.All
    employee.to_json
end

post '/employees' do
  employee = Employee.create(
    first_name: params[:first_name]
    last_name: params[:last_name]
    position: params[:position]
    salary: params[:salary]
    company_id: params[:company_id]
  )
  employee.to_json
end

patch '/employees/:id' do
  updateEmployee = Employee.find(params[:id])

  update = params.select do |key, value|
    ["first_name", "last_name", "position", "salary", "company_id" ].include?(key)
  end
  updateEmployee.update(update)

  updateEmployee.to_json
end

delete '/employee/:id' do
  deleteEmployee = Employee.find(params[:id])
  deleteEmployee.destroy
  deleteEmployee.to_json
end
end