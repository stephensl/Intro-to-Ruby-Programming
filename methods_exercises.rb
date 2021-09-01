# Intro to Ruby Programming Methods Exercises


#1. Write program that prints greeting- method called greeting(name) and returns string

def greeting(name)
  "hello " + name + ". how ya doin?"
end

puts greeting("John")


#2. What do following methods evaluate to?
=begin
1. x = 2                              => 2
2. puts x = 2                         => nil
3. p name = "joe"                     => "joe"
4. four = "four"                      => "four"
5. print something = "nothing"        => nil
=end


#3. Program including method called multiply- takes two arguments and returns product of two numbers


def multiply(a, b)
  a * b
end

puts multiply(50, 2100)


#4. What will following code print to screen?
=begin 
def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

*Will print nothing- return initiated before run puts method to output to screen
=end

#5. Edit method def so previous code will print words to screen. What does it return now?

def scream(words)
  words = words + "!!!!"
  puts words
end

scream("yippeee")

# *Outputs "yippee!!!!" and returns nil (puts always returns nil)


#6. What does following error msg tell you?
=begin
ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
=end

# *Error tells me that only one of the two necessary arguments were provided.
  
  