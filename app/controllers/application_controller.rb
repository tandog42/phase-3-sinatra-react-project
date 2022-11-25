class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  get "/employees/:id" do
    employee = Employee.find_by(id: params[:id])
    employee.to_json
  end

  get "/employees" do
    employee = Employee.all
    employee.to_json
  end

  post "/employees" do
    employee =
      Employee.create(
        first_name: params[:first_name],
        last_name: params[:last_name],
        position: params[:position],
        salary: params[:salary],
        company_id: params[:company_id],
      )
    employee.to_json
  end

  patch "/employees/:id" do
    updateEmployee = Employee.find(params[:id])

    update =
      params.select do |key, value|
        %w[first_name last_name position salary company_id].include?(key)
      end
    updateEmployee.update(update)

    updateEmployee.to_json
  end

  delete "/employees/:id" do
    deleteEmployee = Employee.find(params[:id])
    deleteEmployee.destroy
    deleteEmployee.to_json
  end

  # Company Routes --------------------------------

  get "/companies/:id" do
    company = Company.find_by(id: params[:id])
    company.to_json(include: [:employees])
  end

  get "/companies" do
    company = Company.all
    company.to_json
  end

  post "/companies" do
    company = Company.create(
      company_name: params[:company_name],
      city: params[:city],
      state: params[:state]
    )
    company.to_json
  end
end
