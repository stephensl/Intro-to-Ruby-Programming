# Hashes Exercises: Intro to Ruby Programming #

#1. Given a hash of family members, with keys as the title and an array of names as the values, 
# use Ruby's built-in select method to gather only immediate family members' names into a new array.

family = { uncles: ["bob", "joe", "steve"],
         sisters: ["jane", "jill", "beth"],
         brothers: ["frank", "rob", "david"],
         aunts: ["mary", "sally", "susan"]
         }

immediate_family = family.select do | k, v |
k == :sisters || k == :brothers
end 

p immediate_family.values.flatten


#2.  What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

# Merge! is destructive, meaning it permanently combines the hashes/arrays. Marge will return combined hash/array, but will be unchanged.

person = {name: "John", age: "33", weight: "150 lbs"}
dog = {breed: "boxer", nickname: "Zuzu", poundage: "50 lbs"}

p person.merge(dog)
p person
p dog
p person.merge!(dog)
p person
p dog


#3. Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the
  # keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

dog = {breed: "boxer", nickname: "Zuzu", poundage: "50 lbs"}

dog.each_key { |keys| puts keys }
dog.each_value { |values| puts values }
dog.each { |keys, values| puts keys, values }
p dog.to_a


#4. Given the following expression, how would you access the name of the person?

person = {name: "bob", occupation: "web developer", hobbies: "paiting"}
p person[:name]


#5. What method could you use to find out if a Hash contains a specific value in it? 
  # Write a program that verifies that the value is within the hash.
  
person = {name: "bob", occupation: "web developer", hobbies: "paiting"}

if person.value?("web developer")
  puts "Value is in the hash"
else
  puts "Value is not in the hash"
end 


#6. What's the difference between the two hashes that were created?

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# The difference in the two hashes is the first one uses a symbol (x:) key while the second uses variable defined string.


#7. If you see this error, what do you suspect is the most likely problem?
  #NoMethodError: undefined method `keys' for Array
  
# Keys method pertains to hashes, not arrays.
