def bubble_sort(arr)
  length = arr.length

  for i in 0...length - 1
    swapped = false
    for j in 0...length - i - 1
      if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
        swapped = true
      end
    end
    if swapped == false
      break
    end
  end
  arr.to_s
end

puts bubble_sort([4,3,78,2,0,2])
# [0,2,2,3,4,78]
