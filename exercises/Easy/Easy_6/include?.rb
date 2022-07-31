# def include?(array, check)
#   boolean = false

#   array.each do |element|
#     if (element <=> check) != 0
#       next
#     elsif (element <=> check) == 0
#       boolean = true
#     end

#   end

#   boolean
# end

def include?(array, check)
  array.each { |element| return true if element == check}
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false