# basic loop
i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end

# notice in the above loop we simple use a loop , 
# do and end with the break condition to stop the exceutio of the loop


# while loop - simple loop similar to other languages 

i=0 
while i< 5 
  puts "i is #{i}"
  i+= 1
end


# until loop = this is the equivalent of while with a negation check insetad of positive check 
i=0 
until i >= 5 
  puts "i is #{i}"
  i+= 1
end

# ranges : 
(1..5)      # inclusive range: 1, 2, 3, 4, 5 - 2 dot inclusive
(1...5)     # exclusive range: 1, 2, 3, 4 - 3 exclu


for i in 0..5 # 0...5
  puts "i is #{i}"
end

# we can use step() for changing the increment / step size 

for i in (0..25).step(5) #<-notice for using step we used () around the range  
  puts "i is #{i}"
end


# #times loop - te execute n times any thing
5.times do
  puts "Hello, world!"
end


5.times do |i|
  puts "Hello, world! - #{i}"
end
# sample op
# Hello, world! - 0
# Hello, world! - 1
# Hello, world! - 2
# Hello, world! - 3
# Hello, world! - 4
## Note times starts from 0 


5.upto(10) {|i| print "i : #{i} " }
5
5.downto(1) {|i| print "i : #{i} " }