# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    name "MyString"
    staff nil
    tel_no "MyString"
    address1 "MyString"
    address2 "MyString"
    birth_day "2013-01-04"
  end
end
