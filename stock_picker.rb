=begin
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

Inputs: Array of stock prices, indicies = day
Outputs: a pair of days (array) representing the best day  to buy and best day to sell

> stock_picker([17,3,6,9,15,8,6,1,10])
  => [1,4]  # for a profit of $15 - $3 == $12
=end

# Add a better algorithm that is not O(N^2)

prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
  maxProfit = 0
  days = []
  for i in 0..prices.length - 1
    for j in i + 1..prices.length - 1
      if prices[j] - prices[i] > maxProfit
        maxProfit = prices[j] - prices[i]
        days = [i, j]
      end
    end
  end
  days
end

p stock_picker(prices)