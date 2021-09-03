# Loops and Iterators Exercises

#1. What does each method in following program return after finished executing?


x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

=> [1, 2, 3, 4, 5]


#2. Write a while loop that takes input from user, performs action, only stops when user types "STOP" Each loop can get info from user.

x = ""
while x != "STOP" do
  puts "How's it going?"
  ans = gets.chomp
  puts "Want me to ask again?"
  x = gets.chomp
end


#3. Write a method that counts down to zero using recursion

def countdown(num)
  if num <= 0 
    puts num
  else 
    puts num
    countdown(num - 2)
  end
end

countdown(50)