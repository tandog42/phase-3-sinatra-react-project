require "faker"
puts "🌱 Seeding spices..."


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
