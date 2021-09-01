#Intro to Ruby Programming: Variables Exercises

#1. Program that asks user to type name and prints greeting with name included

puts "What is your name?"
name = gets.chomp
puts "Howdy, #{name}. Glad to meet you!"


#2. Ask user how old they are and tells how old will be in 10, 20, 30, 40 years.

puts "How old are ya?"
age = gets.chomp.to_i


puts "In 10 years you will be:" 
puts age + 10
puts "In 20 years you will be:" 
puts age + 20
puts "In 30 years you will be:" 
puts age + 30
puts "In 40 years you will be:" 
puts age + 40
puts "in 100 years you will be:"
puts "a ghost"


#3. Add section to first exercise that prints name of user 10 times


puts "What is your name?"
name = gets.chomp

10.times do
  puts name
end


#4. Modify above code so it asks for first name, saves to variable. Same for last name then print full name at once


puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp

puts first_name + " " + last_name


#5. Look at following programs:
=begin
x = 0 
3.times do
  x += 1
end
puts x

y = 0 
3.times do
  y += 1
  x = y
end

"What does x print to screen in each case?"
1. 3 (variable x initialized outside scope (0) is accessible within method)
2. Error (x initialized within block, not accessible outside block scope)
=end
