FactoryBot.define do
  factory(:user) do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    phone { Faker::PhoneNumber.phone_number }
    skills { Faker::Number.decimal(l_digits: 2)}
  end
end
