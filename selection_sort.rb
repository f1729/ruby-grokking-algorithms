my_list = [1, 3, 5, 7, 9]

def findSmallest(arr)
  smallest = arr[0]
  smallest_index = 0
  
  for i in 1..arr.length() - 1 do
    if arr[i] < smallest
      smallest = arr[i]
      smallest_index = i
    end
  end

  return smallest_index
end

def selectionSort(arr)
  newArr = []

  for i in 0..arr.length()-1
    smallest = findSmallest(arr)
    newArr.append(arr.delete_at(smallest))
  end
  
  return newArr
end

print selectionSort([5, 3, 6, 2, 10])

