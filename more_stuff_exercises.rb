#  More Stuff Exercises: Intro to Ruby Programming 

#1. Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.
  #"laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"
  
def check_in(word)
  if /lab/ =~ word
  puts word
  else
  puts "no match"
  end 
end 

check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")


#2. What will following program print to screen? What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method" }

# Program will not print anything to the screen (block never activated with .call) . Returns proc.


#3. What is exception handling and what problem does it solve?

# Exception handling is a way to deal with errors and output information on them without exiting program completely. 


#4. Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }


# Why does following code give error?
def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# Error given because did not include & in method parameter to signify block