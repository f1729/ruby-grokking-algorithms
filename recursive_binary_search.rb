def recursive_binary_search(list, item)
  if list.length == 0
    nil
  elsif list.length == 1
    if list.first == item
      0
    else
      nil
    end
  else 
    mid = list.length / 2
    guess = list[mid]
 
    if guess == item
      mid
    elsif guess < item
      result = recursive_binary_search(list[mid+1..-1], item)
      if result.nil?
        nil
      else	
        1 + result + mid
      end
    else
      recursive_binary_search(list[0..mid-1], item)
    end
  end
end

my_list = [1, 3, 5, 7, 9]

my_list2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 , 12, 13, 14, 15 ,16, 17, 18, 19, 20]

puts "The position is: #{recursive_binary_search(my_list, 9)}" # => 4
puts recursive_binary_search(my_list2, 100) # => nil
