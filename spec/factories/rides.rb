FactoryBot.define do
  factory :ride do
    name { Faker::Space.star_cluster }
    amusment_park
  end
end
