# encoding: UTF-8
FactoryGirl.define do

 factory :role_system_admin , :class => Role do
    name "system_admin"
  end

  factory :role_admin , :class => Role do
    name "admin"
  end

  factory :role_headquarter , :class => Role do
    name "headquarter"
  end

  factory :role_staff , :class => Role do
    name "staff"
  end

end