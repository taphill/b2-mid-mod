FactoryBot.define do
  factory :amusment_park do
    name { Faker::Company.name + 'Park' }
  end
end
