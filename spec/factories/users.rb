FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user_#{n}@test.com" }
    sequence(:name) { |n| "name_#{n}" }
    password 'Password1234'
    password_confirmation 'Password1234'
  end
end
