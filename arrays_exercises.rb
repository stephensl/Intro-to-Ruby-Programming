# Intro to Ruby Programming: Arrays Exercises

#1. Check to see if number appears in following array.. 

array = [1, 3, 5, 7, 9, 11]
number = 3

if array.include?(number)
  puts "#{number} is in the array"
else
  puts "#{number} is not in the array"
end 
 
# or

array.each do |num|
  if num == number
    puts "#{number} is in the array"
  end 
end 


#2. What will following programs return? What is value of arr after each?

arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)

returns 1
arr = [["b"], ["b", 2], ["b", 3], ["a", 1] ["a", 2] ["a", 3]]


arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)

returns [1, 2, 3]
arr = [["b"], ["a", [1, 2, 3]]]


#3. How to return word "example" from following array..

arr = [["test", "hello", "world"], ["example", "mem"]]

arr.last.first


#4. What does each method return?

arr = [15, 7, 18, 5, 12, 8, 5, 1]

1. arr.index(5)        => 3
2. arr.index[5]        => error
3. arr[5]              => 8


#5. What is value of a, b, and c in following program?

string = "Welcome to America!"
a = string[6]            => e
b = string[11]           => A
c = string[19]           => nil


#6. Problem with code and fix..

names = ["bob", "joe", "susan", "margaret"]
names["margaret"] = "jody"
ERROR

#to fix
names[3] = "jody"


#7. Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

arr = [10, 20, 30, 40, 50]
arr.each_with_index { |val, idx| puts "#{idx}. #{val}" }


#8. Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. 
#You should have two arrays at the end of this program, 
#The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.

arr = [10, 20, 30, 40, 50]

new_arr = arr.map { |n| n + 2 }

p arr
p new_arr
