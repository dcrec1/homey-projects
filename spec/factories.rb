FactoryBot.define do
  factory :user do
    name { 'Name' }
    sequence(:email) { |n| "email#{n}@email.com" }
    password { "password " }
  end
end
