# def stock_picker(prices)
#   profit = 0
#   for i in prices
#     for j in prices
#       if prices.index(i) > prices.index(j)
#         result = i - j
#         if profit < result
#           profit = result
#           buy = prices.index(j)
#           sell = prices.index(i)
#           days = [buy, sell]
#         end
#       end
#     end
#   end
#   puts "Buy on day #{buy + 1} at $#{prices[buy]} and sell on day #{sell + 1} at $#{prices[sell]} to get a profit of $#{profit}"
#   puts "The corresponding array indices are [#{buy}, #{sell}]"
#   days
# end

def stock_picker(prices)
  lowest_price = prices[0]
  min_day = 0
  buy_day = 0
  sell_day = 0
  profit = 0

  prices.each_with_index do |curr_price, curr_day|
    if curr_price < lowest_price
      lowest_price = curr_price
      min_day = curr_day
    end

    potential_profit = curr_price - lowest_price

    if potential_profit > profit
      profit = potential_profit
      buy_day = min_day
      sell_day = curr_day
    end
  end
  puts "Buy on day #{buy_day + 1} at $#{prices[buy_day]} and sell on day #{sell_day + 1} at $#{prices[sell_day]} to get a profit of $#{profit}"
  puts "The corresponding array indices are [#{buy_day}, #{sell_day}]"
  [buy_day, sell_day]
end

stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12