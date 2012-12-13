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

FactoryGirl.create(:mitsubishi)
FactoryGirl.create(:toyota)
FactoryGirl.create(:honda)

FactoryGirl.create(:pajero)
FactoryGirl.create(:delica)

FactoryGirl.create(:prius)
FactoryGirl.create(:alion)

FactoryGirl.create(:insight)

FactoryGirl.create_list(:mitsubishi_carname,5)
FactoryGirl.create_list(:toyota_carname,5)
FactoryGirl.create_list(:honda_carname,5)

FactoryGirl.create_list(:pajero_car,30)
FactoryGirl.create_list(:delica_car,30)
FactoryGirl.create_list(:prius_car,30)
FactoryGirl.create_list(:insight_car,30)

FactoryGirl.create_list(:insight_car,30)

# Maker.create! do |t|
#   t.name = '三菱'
# end
# Maker.create! do |t|
#   t.name = 'トヨタ'
# end
# Maker.create! do |t|
#   t.name = 'ホンダ'
# end
# Maker.create! do |t|
#   t.name = 'スズキ'
# end