def bubble_sort(array)
  i = array.length - 1

  while i > 0 do
    curr_index = 0
    k = array.length - 1

    while k > 0 do
      next_index = curr_index + 1
      curr_value = array[curr_index]
      next_value = array[next_index]

      if curr_value > next_value
        array[next_index] = curr_value
        array[curr_index] = next_value
      end
      curr_index += 1
      k -= 1
    end
    i -= 1
  end
  array
end

# not quite the true bubble sort algorithm, but still wanted to try it
# highest value still "bubbles" but more than two values can be compared at once
# the grouped numbers can be reversed as they will only be grouped in a strictly descending order
# breaks loop if there are no grouped numbers

def bubble_sort2(array)
  loop do
    array = array.chunk_while{ |i, k| i > k }.to_a
    break array.flatten if array.all?{ |e| e.length == 1 }
    array = array.map(&:reverse).flatten
  end
end

array = [4, 3, 78, 2, 0, 2]
array2 = [40, 10, 7, 11, 1, 15]

p bubble_sort(array)
p bubble_sort2(array2)
