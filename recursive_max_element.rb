def max_element(list)
  if list.length == 0
    return 0
  elsif list.length == 1
    return list.first
  else
    if list.first >= max_element(list[1..-1])
      return list.first
    else
      return max_element(list[1..-1])
    end
  end
end

my_list = [1, 3, 5, 7, 9]

my_list2 = [3, 5, 7, 9, 1, 100, 2, 4, 55, 12, 99, 100, 12, 12, 12]

puts max_element(my_list) # => 9
puts max_element(my_list2) # => 100

