def list_elements_counter(list)
  if list.length == 0
    return 0
  else
    return 1 + list_elements_counter(list[1..-1])
  end
end

my_list = [1, 3, 5, 7, 9]
my_list2 = []

puts list_elements_counter(my_list) # => 5
puts list_elements_counter(my_list2) # => 0
