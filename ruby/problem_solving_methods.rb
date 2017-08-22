arr = [1, 2, 3, 4, 5]

def search_array(array, integer)
  index = nil
  array.length.times do |i|
    if array[i] == integer
      index = i
    end
  end
  p index
end


search_array(arr, 1)
search_array(arr, 9)