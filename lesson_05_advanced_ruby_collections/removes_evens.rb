require 'pry'

def remove_evens!(arr)
  arr.each do |num|
    binding.pry
    if num % 2 == 0
      binding.pry
      arr.delete(num)
      binding.pry
    end
  end
  arr
end

p remove_evens!([1,1,2,3,4,6,8,9])

