# coding: utf-8
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car do
    car_name_id 1 
    grade1 "グレード１"
    grade2 "グレード２"
    price 1000
    sale_start_at "2013-01-04"
    sale_end_at "2013-01-04"
    notes "MyString"
    image1 "MyString"
    image2 "MyString"
    image3 "MyString"
  end

  sequence(:grade_string) { |n| "グレード#{n}" }

  factory :car_1  , :class => Car do
    car_name_id 1
    grade1 "グレード１"
    grade2 "グレード２"
    price 1000
    sale_start_at "2013-01-04"
    sale_end_at "2013-01-04"
    notes "MyString"
    image1 "MyString"
    image2 "MyString"
    image3 "MyString"
  end

  factory :car_2  , :class => Car do
    car_name_id 2
    grade1 "グレード１"
    grade2 "グレード２"
    price 1000
    sale_start_at "2013-01-04"
    sale_end_at "2013-01-04"
    notes "MyString"
    image1 "MyString"
    image2 "MyString"
    image3 "MyString"
  end

  factory :car_3  , :class => Car do
    car_name_id 3
    grade1 "グレード１"
    grade2 "グレード２"
    price 1000
    sale_start_at "2013-01-04"
    sale_end_at "2013-01-04"
    notes "MyString"
    image1 "MyString"
    image2 "MyString"
    image3 "MyString"
  end

end
