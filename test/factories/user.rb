FactoryBot.define do
  factory :user, class: User do
    name      { Faker::App.name }
    email     { Faker::Internet.email }
    password  '12345678'
    password_confirmation '12345678'
  end
end
