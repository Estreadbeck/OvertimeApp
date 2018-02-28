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
  end

  factory :second_user, class: "User" do
    first_name 'Robb'
    last_name 'Stark'
    email { generate :email }
    password 'qwerty'
    password_confirmation "qwerty"
  end

  factory :admin_user, class: "AdminUser" do
    first_name "Admin"
    last_name "User"
    email { generate :email }
    password "ytrewq"
    password_confirmation "ytrewq"
  end

  factory :non_authorized_user, class: "User" do
    first_name 'Non'
    last_name 'Authorized'
    email { generate :email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end
end