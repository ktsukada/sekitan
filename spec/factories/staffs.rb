# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :staff do
    user nil
    store nil
    staff_no "MyString"
  end
end
