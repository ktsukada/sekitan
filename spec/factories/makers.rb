# coding: utf-8 
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
	factory :maker do
		name "MyString"
	end
	factory :mitsubishi , :class => Maker do
		name "三菱"
	end
	factory :toyota , :class => Maker do
		id 2
		name "トヨタ"
	end
end
