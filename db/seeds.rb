@user = User.create(email: "test@test.com", password: "qwerty", password_confirmation: "qwerty", first_name: "Jon", last_name: "Snow")

puts "1 User created"


100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 Posts have been created"