FactoryBot.define do 
  sequence :email do |n|
    "test#{n}@test.com"
  end

  factory :user do
    first_name 'Jon'
    last_name 'Snow'
    email { generate :email }
    password 'qwerty'
    password_confirmation "qwerty"
    phone '8008675309'
  end

  factory :second_user, class: "User" do
    first_name 'Robb'
    last_name 'Stark'
    email { generate :email }
    password 'qwerty'
    password_confirmation "qwerty"
    phone '8008675309'
  end

  factory :admin_user, class: "AdminUser" do
    first_name "Admin"
    last_name "User"
    email { generate :email }
    password "ytrewq"
    password_confirmation "ytrewq"
    phone '8008675309'
  end

  factory :non_authorized_user, class: "User" do
    first_name 'Non'
    last_name 'Authorized'
    email { generate :email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
    phone '8008675309'
  end
end