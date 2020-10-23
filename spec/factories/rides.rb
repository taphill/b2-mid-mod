FactoryBot.define do
  factory :ride do
    name { Faker::Space.star_cluster }
  end
end
