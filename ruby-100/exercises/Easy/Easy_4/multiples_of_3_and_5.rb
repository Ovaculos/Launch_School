# def multisum(number)
#   counter = 1
#   sum = 0
#   until counter > number
#     if counter % 3 == 0 || counter % 5 == 0
#       sum += counter
#       counter += 1
#     else
#       counter += 1
#     end
#   end
#   sum
# end


# or

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end
  
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168