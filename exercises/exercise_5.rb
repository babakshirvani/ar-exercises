require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "Total Revenue: #{Store.sum(:annual_revenue)}"   #Total Revenue: 4114000
puts "Average Revenue: #{Store.average(:annual_revenue)}"  #Average Revenue: 822800.0

puts "The best Stores: #{Store.where("annual_revenue <= 1000000").count}"