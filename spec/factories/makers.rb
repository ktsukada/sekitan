# coding: utf-8 
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
	factory :maker do
		name "MyString"
	end
	factory :mitsubishi , :class => Maker do
		id 1
		name "三菱"
	end
	factory :toyota , :class => Maker do
		id 2
		name "トヨタ"
	end
	factory :honda , :class => Maker do
		id 3
		name "ホンダ"
	end
end
