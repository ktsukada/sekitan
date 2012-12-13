# coding: utf-8 
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

sequence(:mitsubishi_carname_string) { |n| "三菱車種名#{n}" }
sequence(:toyota_carname_string) { |n| "トヨタ車種名#{n}" }
sequence(:honda_carname_string) { |n| "ホンダ車種名#{n}" }

 factory :mitsubishi_carname , :class => CarName do
    maker_id 1
    name { FactoryGirl.generate(:mitsubishi_carname_string) }
  end

 factory :toyota_carname , :class => CarName do
    maker_id 2
    name { FactoryGirl.generate(:toyota_carname_string) }
  end

   factory :honda_carname , :class => CarName do
    maker_id 3
    name { FactoryGirl.generate(:honda_carname_string) }
  end
 
  factory :pajero , :class => CarName do
    maker_id 1
    name "パジェロ"
  end

  factory :delica , :class => CarName do
    maker_id 1
    name "デリカ"
  end

  factory :prius , :class => CarName do
    maker_id 2
    name "プリウス"
  end

  factory :alion , :class => CarName do
    maker_id 2
    name "アリオン"
  end

  factory :insight , :class => CarName do
    maker_id 3
    name "インサイト"
  end

end
