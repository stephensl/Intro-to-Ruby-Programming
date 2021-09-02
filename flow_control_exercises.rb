# Intro to Ruby Programming: Flow Control Exercises

#1. Do following expressions return true or false
=begin

(32 * 4) >= 129           => false
false != !true            => false
true == 4                 => false
false == (847 == "874")   => true
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false       => true

=end


#2. Method that takes string as argument. Method return new all caps version, only if string longer than 10 letters.

def cap_method(string)
  if string.length > 10
    string.upcase
  else 
    string
  end
end

puts cap_method("Barry Manilow")
puts cap_method("Bob Seeger")


#3. Take number from user (0-100) and repor back whether number is between 0-50, 51-100, or 100+

puts "Gimme a number between 0 and 100"
number = gets.chomp.to_i

if number <= 50
  puts "Your number lies between zero and fifty"
elsif number > 50 && number <= 100
  puts "Your number lies between fifty-one and one hundred"
else
  puts "Your number is lower than zero or higher than one hundred"
end

# the above code can be condensed to because call stack runs first code before moving to next, not necessary to reiterate previously defined condition

puts "Gimme a number between o and 100"
number = gets.chomp.to_i

if number <= 50
  puts "#{number} is between zero and fifty"
elsif number <= 100
  puts "#{number} is between 51 and 100"
else
  puts "#{number} is above 100"
end


#4. What will each code block print to screen?

#Snippet 1
"4" == 4 ? puts ("TRUE") : puts ("FALSE") 
# will print "FALSE" 

#Snippet 2
x = 2
if ((x * 3) / 2) == (4 + 4 - x -3)
  puts "Did you get it right?"
else
  puts "Did you?"
end 
# will print "Did you get it right?"

#Snippet 3
y = 9 
x = 10
if (x + 1) <= (y)
  puts "Alright"
elsif (x + 1) >= (y)
  puts "Alright now!"
  elsif (y + 1) == x
    puts "ALRIGHT NOW!"
  else
    puts "Alrighty!"
  end
  # will print "Alright now!"
  
  
  #5. When you run this code, you get error (exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end)
  # Why error and how to fix?
  
  # Original Code
  def equal_to_four(x)
    if x == 4
      puts "yup"
    else 
      puts "nope"
    end
    
    equal_to_four(5)
    
    # Error because missing one "end" to close method def and conditional if..else statement
    
    # Fixed code
    def equal_to_four(x)
    if x == 4
      puts "yup"
    else
      puts "nope"
    end
  end
  
  
  #6. Do the following expressions return true or false?
=begin

(32 * 4) >= "129"             => Error- comparing integer to string
847 == "874"                  => False
"847" < "846"                 => False
"847" > "846"                 => True
"847" > "8478"                => False
"847" < "8478"                => True
  