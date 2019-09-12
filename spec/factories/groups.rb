FactoryBot.define do
  factory :group do
    name { Faker::Team.creature }
    team { create(:team) }
  end
end
