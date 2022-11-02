require "faker"
puts "🌱 Seeding..."

Company.create(company_name: "Minnesota Classic Trucks", city: "St.Cloud", state: 'Minnesota')
Company.create(company_name: "Florida Classic Trucks", city: "Tampa", state: 'Florida')

20.times do
  Employee.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    position: Faker::Job.position,
    salary: rand(40_000..120_000),
    company_id: rand(1..2)
  )
  
end

puts "✅ Done seeding!"
