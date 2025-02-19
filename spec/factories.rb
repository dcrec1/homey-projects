FactoryBot.define do
  factory :comment do
    project { nil }
    body { "MyText" }
    user { nil }
  end

  factory :user do
    name { 'Name' }
    sequence(:email) { |n| "email#{n}@email.com" }
    password { "password " }
  end

  factory :project do
    name { 'Rails' }
  end
end
