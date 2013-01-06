require 'factory_girl'

# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Maker.delete_all
CarName.delete_all
Car.delete_all

# maker
FactoryGirl.create(:maker_1)
FactoryGirl.create(:maker_2)
FactoryGirl.create(:maker_3)
FactoryGirl.create_list(:maker,20)


# car_name
FactoryGirl.create_list(:car_name_1,20)
FactoryGirl.create_list(:car_name_2,20)
FactoryGirl.create_list(:car_name_3,20)
FactoryGirl.create_list(:car_name,20)

# car
FactoryGirl.create_list(:car_1,20)
FactoryGirl.create_list(:car_2,20)
FactoryGirl.create_list(:car_3,20)
FactoryGirl.create_list(:car,50)

