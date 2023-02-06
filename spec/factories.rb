FactoryBot.define do
  factory :project do
    title { "MyString" }
    due_date { "2023-02-07" }
    description { "MyText" }
    status { 0 }
  end

  factory(:user) do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    phone { Faker::PhoneNumber.phone_number }
    pay_rate { Faker::Number.decimal(l_digits: 2)}
  end
end
