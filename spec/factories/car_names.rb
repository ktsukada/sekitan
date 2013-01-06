# coding: utf-8
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car_name do
    maker_id 1
    name "MyString"
  end

  sequence(:mitsubishi_carname_string) { |n| "三菱車種名#{n}" }
sequence(:toyota_carname_string) { |n| "トヨタ車種名#{n}" }
sequence(:honda_carname_string) { |n| "ホンダ車種名#{n}" }

 factory :car_name_1 , :class => CarName do
    maker_id 1
    name { FactoryGirl.generate(:mitsubishi_carname_string) }
  end

 factory :car_name_2 , :class => CarName do
    maker_id 2
    name { FactoryGirl.generate(:toyota_carname_string) }
  end

   factory :car_name_3 , :class => CarName do
    maker_id 3
    name { FactoryGirl.generate(:honda_carname_string) }
  end
 

end
