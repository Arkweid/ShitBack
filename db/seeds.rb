DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

users = FactoryBot.create_list(:user, 10)

users.each do |user|
  tariffs = FactoryBot.create_list(:tariff, 3, user: user)
  FactoryBot.create_list(:client, 20, user: user, tariff: tariffs.sample)
end
