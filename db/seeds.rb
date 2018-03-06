@user = User.create(email: "test@test.com",
                     password: "qwerty",
                     password_confirmation: "qwerty", 
                     first_name: "Jon", 
                     last_name: "Snow",
                     phone: "3854744365")

puts "1 User created"

AdminUser.create(email: "admin1@test.com",
                 password: "ytrewq", 
                 password_confirmation: "ytrewq", 
                 first_name: "Admin", 
                 last_name: "User", 
                 phone: "3854744365")

puts "1 Admin user created"

100.times do |post|
  Post.create!(date: Date.today, 
              rationale: "#{post} rationale content", 
              user_id: @user.id, 
              overtime_request: 2.5)
end

puts "100 Posts have been created"

100.times do |audit_log|
  AuditLog.create!(user_id: User.last.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 audit logs have been created"