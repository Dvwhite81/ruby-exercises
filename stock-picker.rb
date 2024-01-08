def get_diff_hashes(arr)
  diff_hashes = []

  for i in 0..arr.length - 2
    price = arr[i]
    rest = arr.slice(i + 1, arr.length)

    for j in 0..rest.length - 1
      later_price = rest[j]
      diff = later_price - price
      diffHash = { buy: i, sell: i + j + 1, diff: diff }
      diff_hashes.push(diffHash)
    end
  end
  diff_hashes
end

def stock_picker(prices)
  diff_hashes = get_diff_hashes(prices)
  max = diff_hashes.max_by { |el| el[:diff] }
  return Array[max[:buy], max[:sell]].to_s
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
#  => [1,4]  # for a profit of $15 - $3 == $12
