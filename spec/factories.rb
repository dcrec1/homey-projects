FactoryBot.define do
  factory :user do
    name { 'Name' }
    sequence(:email) { |n| "email#{n}@email.com" }
    password { "password " }
  end

  factory :project do
    name { 'Rails' }
  end
end
