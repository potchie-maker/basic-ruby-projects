def stock_picker(prices)
  profit = 0
  for i in prices
    for j in prices
      if prices.index(i) > prices.index(j)
        result = i - j
        if profit < result
          profit = result
          buy = prices.index(j)
          sell = prices.index(i)
          days = [buy, sell]
        end
      end
    end
  end
  puts "Buy on day #{buy + 1} at $#{prices[buy]} and sell on day #{sell + 1} at $#{prices[sell]} to get a profit of $#{profit}"
  puts "The corresponding array indices are [#{buy}, #{sell}]"
  days
end

stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12