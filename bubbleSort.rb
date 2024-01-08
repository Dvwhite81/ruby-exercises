# frozen_string_literal: true

def bubble_sort(arr)
  (0...arr.length - 1).each do |i|
    swapped = false
    (0...arr.length - i - 1).each do |j|
      if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
        swapped = true
      end
    end
    break if swapped == false
  end
  arr.to_s
end

puts bubble_sort([4, 3, 78, 2, 0, 2])
# [0,2,2,3,4,78]
