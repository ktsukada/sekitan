# coding: utf-8
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car do
    maker nil
    car_name nil
    grade1 "MyString"
    grade2 "MyString"
    price 1
    sale_start_at "2013-01-04"
    sale_end_at "2013-01-04"
    notes "MyString"
    image1 "MyString"
    image2 "MyString"
    image3 "MyString"
  end

  sequence(:grade_string) { |n| "グレード#{n}" }

  factory :pajero_car  , :class => Car do
    maker_id 1
    car_name_id 1
    grade { FactoryGirl.generate(:grade_string) }
  end

    factory :delica_car  , :class => Car do
    maker_id 1
    car_name_id 2
    grade { FactoryGirl.generate(:grade_string) }
  end

    factory :prius_car  , :class => Car do
    maker_id 2
    car_name_id 3
    grade { FactoryGirl.generate(:grade_string) }
  end

    factory :insight_car  , :class => Car do
    maker_id 2
    car_name_id 5
    grade { FactoryGirl.generate(:grade_string) }
  end
end
