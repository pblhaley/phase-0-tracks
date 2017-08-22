########## SIMPLE SEARCH ##########
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


########## FIBONACCI ##########
# Inside the method we need to:
# => define beginning array
# => define a variable to plug into some algebraic equation that gives us the correct number
# => push new varialbe into the array past the 0 and 1 index
# => loop until needed

def fib(num)
  array = [0, 1]
  index = 0
    until index == num.to_i - 2
      next_number = array[-1] + array[-2]
      array.push(next_number)
      index +=1
    end
  array
end

p fib(6)
p fib(100)[-1] == 218922995834555169026


########## SORT AN ARRAY-BUBBLE SORT ##########
# =>Visualizations helped in this release. I found a great video on youtube that basically walked me through creating a bubble sort algorithm and explains all the pieces that were needed and why they were neccessary. I felt excited learning about this, but I need more practice on my own when I'm not watching a video that shows me exactly how to do it. I think the video is great for learning, but I need to practice more to solidify it.

# Write a sorting method that sorts an array of integers.
def bubble_sort(array)
  n = array.length
  loop do

    # Iterates the 4 through the array
    #[4, 3, 2, 1]
    #[3, 4, 2, 1]
    #[3, 2, 4, 1]
    #[3, 2, 1, 4]
    # Iterates the 3 through the array
    #[2, 3, 1, 4]
    #[2, 1, 3, 4]
    # Iterates the 2 through the array
    #[1, 2, 3, 4]
    # End result is a sorted array

    # Create a variable so that you can later stop this process.
    swapped = false

    # Use iteration to loop through your array.
    (n-1).times do |i|

      # Compare one integer to the next integer and swap if appropriate.
      if array[i] > array[i +1]
        array[i], array[i +1] = array[i +1], array[i]
        swapped = true
      end
    end

    # End the loop if nothing needs to be swapped anymore.
    break if not swapped
  end
  array
end

a = [4, 3, 2, 1]
p bubble_sort(a)