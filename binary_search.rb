def binary_search(list, item)
  low = 0
  high = list.length - 1

  while low <= high
    mid = low + (high - low)/2
    guess = list[mid]

    if guess == item
      return mid
    end

    if guess > item
      high = mid - 1
    else
      low = mid + 1
    end

  end

  nil
end


my_list = [1, 3, 5, 7, 9]

puts binary_search(my_list, 3) # => 1
puts binary_search(my_list, -1) # => nil
