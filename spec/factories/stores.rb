# coding: utf-8
FactoryGirl.define do

  sequence(:store_string) { |n| "店舗#{n}" }

	factory :store , :class => Store do
      name { FactoryGirl.generate(:store_string) }
    end

end