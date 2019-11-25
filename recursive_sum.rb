def sum(list)
  if list.length == 0
    0
  else
    list.first + sum(list[1..-1])
  end
end

my_list = [1, 3, 5, 7, 9]

puts sum(my_list) # => 25
