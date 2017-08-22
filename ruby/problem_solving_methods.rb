array = [1, 2, 3, 4, 5]

def search_array(array, integer)
  index = nil
  array.length.times do |i|
    if array[i] == integer
      index = i
    end
  end
  p index
end


search_array(array, 1)
search_array(array, 9)



#Inside the method we need to:
# => define beginning array
# => push other data pieces into the array past the 0 and 1 index
# => define a variable to plug into some algebraic equation that gives us the correct number
# =>

def fib(num)
  arr = [0, 1]
  index = 0
    until index == num.to_i - 2
      next_number = arr[-1] + arr[-2]
      arr.push(next_number)
      index +=1
    end
  arr
end

p fib(6)
p fib(100)[-1] == 218922995834555169026