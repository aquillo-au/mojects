FactoryBot.define do
  factory :budget do
    total { 100 }
    spent { 50 }
    allocated { 30 }
  end

  factory :task do
    estimated_time { 1 }
    due_date { Date.today }
    description { "MyText" }
    title { "MyString" }
    status { 0 }
  end

  factory :project do
    title { "MyString" }
    due_date { Date.today }
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
