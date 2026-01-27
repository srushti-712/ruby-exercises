# the below is a bad way of doing because it creates the Array.new(2) first and then adds 3 pointers to teh outer array 
mutable = Array.new(3, Array.new(2))
mutable[0][0] = 1000 # [[1000, nil], [1000, nil], [1000, nil]]
puts mutable

mutable_clean = Array.new(3) {Array.new(2)}
mutable_clean[0][0]= 1000 # [[1000, nil], [nil, nil], [nil, nil]]
puts mutable 

