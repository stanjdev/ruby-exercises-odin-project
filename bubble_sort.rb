def bubble_sort(num_array)
  # do while loop to continue checking if all in order using a flag variable
  swaps = 0
  # do one initial swap first
  loop do
    # inner for loop going until length - 2
    for i in 0..num_array.length - 2 do
      # compare current with right
      if num_array[i] > num_array[i + 1]
        # make swap
        num_array[i], num_array[i + 1] = num_array[i + 1], num_array[i]
        swaps += 1
      end
    end
    break if swaps == 0
    swaps = 0
  end
  print num_array
  return num_array
end


bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

# bubble_sort([78,4,3,2,2,0])
