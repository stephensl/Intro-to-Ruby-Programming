# Intro to Programming Book- Ruby Basics Exercises


#1. Add two strings together, return first and last name as full name in one string.

first_name = "Lawton"
last_name = "Stephens"

puts "My name is #{first_name} #{last_name}"


#2. Use 4 digit number to find digit in thous, hund, tens, ones place.

x = 3167

thousands = x / 1000
hundreds = x % 1000 / 100
tens = x % 1000 % 100 / 10
ones = x % 1000 % 100 % 10

puts thousands
puts hundreds
puts tens
puts ones


#3. Use hash to store list of movies and year- then use puts to print year onto screen

movies = {:dumb_and_dumber => 1990, 
          :surf_ninjas => 1993, 
          :anchorman => 2005,
          :superbad => 2009}
          
puts movies[:dumb_and_dumber]
puts movies[:surf_ninjas]
puts movies[:anchorman]
puts movies[:superbad]


#4. Use dates from above to store in array with same output

dates = [1990, 1993, 2005, 2009]

puts dates[0]
puts dates[1]
puts dates[2]
puts dates[3]


#5. Output factorial of 5, 6, 7, and 8

puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1


#6. Calculate squares of 3 float numbers and output to screen

puts 10.5 * 10.5
puts 32.2 * 32.2
puts 11.6 * 11.6


#7. Error message SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}' #from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'

# error in using ")" to close hash instead of "}" 