FactoryBot.define do
  factory :tariff, class: Tariff do
    user
    name { ['Безлимит', 'Ровный поцик', 'Нищеброд'].sample }
    description 'Lorem ipsum'
    tax { [100, 200, 300].sample }
    traffic_limit { [100, 200, 300].sample }
    traffic_current { rand(0..100) }
  end
end
