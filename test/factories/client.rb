FactoryBot.define do
  factory :client, class: Client do
    user
    tariff
    email { Faker::Internet.email }
    contract_number { rand(0..9_999_999) }
    payed { [true, false].sample }
  end
end
