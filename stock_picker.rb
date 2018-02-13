# Implement a method #stock_picker that takes in an array of stock prices, 
# one for each hypothetical day. It should return a pair of days representing 
# the best day to buy and the best day to sell. Days start at 0.

#   > stock_picker([17,3,6,9,15,8,6,1,10])
#   => [1,4]  # for a profit of $15 - $3 == $12

#   Quick Tips:
# You need to buy before you can sell
# Pay attention to edge cases like when the lowest day is the last day or 
# the highest day is the first day.

def stock_picker(stocks)
  buy = stocks.max
  max_profit, best_buy, best_sell = 0
  days = []

  (0..stocks.length - 1).each do |i|
    buy = stocks[i] if stocks[i] < buy
    (i..stocks.length - 1).each do |j|
      next unless (stocks[j] - buy) > max_profit
      max_profit = (stocks[j] - buy)
      best_buy = i
      best_sell = j
    end
  end
  puts days << best_buy << best_sell
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10]) # [1,4]
stock_picker([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) # [0, 9]
stock_picker([12, 5, 6, 7, 8, 9, 1]) # [1, 5]
