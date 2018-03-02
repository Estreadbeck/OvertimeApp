@user = User.create(email: "test@test.com", password: "qwerty", password_confirmation: "qwerty", first_name: "Jon", last_name: "Snow")

puts "1 User created"

AdminUser.create(email: "admin1@test.com", password: "ytrewq", password_confirmation: "ytrewq", first_name: "Admin", last_name: "User")

puts "1 Admin user created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"