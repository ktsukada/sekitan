# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :store do
    company nil
    name "MyString"
    address1 "MyString"
    address2 "MyString"
    tel_no "MyString"
  end
end
