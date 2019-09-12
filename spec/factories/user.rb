FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.safe_email }  
    password { Faker::Internet.password }
    job { Faker::Job.title }
    phone { Faker::PhoneNumber.cell_phone }
  end
end