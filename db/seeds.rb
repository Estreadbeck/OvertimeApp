@employee = Employee.create(email: "test@test.com",
                     password: "qwerty",
                     password_confirmation: "qwerty", 
                     first_name: "Jon", 
                     last_name: "Snow",
                     phone: "8015052226")

puts "1 Employee created"

AdminUser.create(email: "admin1@test.com",
                 password: "ytrewq", 
                 password_confirmation: "ytrewq", 
                 first_name: "Admin", 
                 last_name: "User", 
                 phone: "8015052226")

puts "1 Admin user created"

AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit logs have been created"

100.times do |post|
  Post.create!(date: Date.today, 
              rationale: "#{post} rationale content Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 
              user_id: @employee.id, 
              overtime_request: 2.5)
end

puts "100 Posts have been created"
