#Inject method is just like Reduce .
# what makes inject very versatile is that the block should accept two params, the accumulator and the current element.

[11, 7, 2, 4].inject { |acc, el| acc + el }

#the block params are always in the order of accumulator (acc) followed by element (el). 
#Because of how we are calling inject, the initial accumulator will be the first element of the array by default. So our first    iteration has the acc set to 11 and el set to 7. 
puts [1,2,3,4].inject { |acc,el| acc+el}

 # result of the block is always reassigned to be the new accumulator !!!!
