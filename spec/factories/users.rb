# # Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :user do
    sequence(:account) {|n| "test#{n}" }
    sequence(:email) {|n| "test#{n}@test.com" }
    password "testtest"
  end

end

