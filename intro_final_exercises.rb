#Final Exercises: Intro to Ruby Programming

#1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each do |num|
  puts num
end 


#2. Same as above, but only print out values > 5

array.each do |num|
  if num > 5
    puts num
  end 
end 


#3. Using same array, use select method to extract all odd numbers into new array.

new_array = array.select do |num|
  num % 2 != 0
end 

p new_array


#4. Append 11 to end of original array. Prepend 0 to the beginning.

p array << 11

p array.unshift(0)


#5. Get rid of 11 and append a 3

p array.pop
p array << 3

#6. Get rid of duplicates without specifically removing any one value.

arr = [1, 2, 2, 2, 3, 3, 4, 4, 5, 6, 7, 7, 8, 9, 9, 10, 10, 10]

p arr.uniq!

#7. Major difference between array and hash?

  # Array is series of elements, hash is series of key/value pairs. Arrays referenced by index, hashes referenced by key/value
  

#8. Create hash with one key-value pair using both Ruby syntax styles

dog = {breed: "boxer"} #new style
dog = {:breed => "boxer"}  #old style


#9. Suppose have the hash 
h = {a:1, b:2, c:3, d:4}
# Get the value of key ":b"
h[:b]
# Add to this hash the key:value pair {e:5}
h[:e] = 5
# Remove all key:value pairs whose value is less than 3.5
h.delete_if do |k, v|
  v < 3.5
end 

#10. Can hash values be arrays? Can you have an array of hashes? (give examples)

yes

array = [{dog:"boxer,"}, {cat:"fluffy"}]
hash = {dog:["boxer", "retreiver", "pit bull"]}


#11. Given the following data structures, write a program that copies the information 
  #from the array into the empty hash that applies to the correct person.
  
  contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]


# {"Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

#12. Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number.

contacts["Joe Smith"][:email]
contacts["Sally Johnson"][:phone]


#13. Use Ruby's Array method delete_if and String method start_with? to delete all of the strings 
  #that begin with an "s" in the following array.
  
arr = ["snow", "winter", "ice", "slippery", "salted roads", "white trees"]

arr.delete_if do |str|
  str.start_with?("s")
end 

arr.delete_if { |str| str.start_with?("s", "w") }


#14. Turn given array into new array that consists of strings containing one word (ex. ["white snow"]) --> ["white", "snow"]
    #look into using map and flatten methods, as well as String's split method.
    
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
     
b = a.map do |pairs|
  pairs.split
end

b = b.flatten

p b 


#15. What will following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

#Will ouput "These hashses are the same!" as the two hashes contain the same key/value pairs using old/new syntax

#16. Programmatically loop or iterate over the contacts hash from exercise 11, and populate the associated data from the contact_data array. 

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end 
end 