require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Please enter the store name:"
store_name = gets.chomp
@user_store = Store.create(name: store_name)

pp @user_store.errors.messages
@user_store.errors.messages.each {|key, message| puts "#{key}: #{message[0]}" }