# # Brute force, record the max profit by checking every combo closing in from left to right
# def stock_picker(stock_prices)
#   max_profit = 0
#   buy_sell_days = [0, 0]
#   # iterate through list,
#   for i in 0..stock_prices.length do
#     for j in i..stock_prices.length - 1 do
#       # subtract every number after curr_anchor_price, check for max
#       profit = stock_prices[j] - stock_prices[i]
#       # if new max, change max_profit, update days_index
#       if profit > max_profit
#         max_profit = profit
#         buy_sell_days = [i, j]
#       end
#     end
#   end
#   print buy_sell_days
#   buy_sell_days
# end


# O(n) time, O(1) space. have two variables, recording min_price, and max_profit. Only have to loop once the whole way
def stock_picker(stock_prices)
  min_price = stock_prices[0]
  min_index = 0
  max_profit = 0
  buy_sell_days = [0, 0]
  for i in 1..stock_prices.length - 1 do
    if stock_prices[i] < min_price
      min_price = stock_prices[i]
      min_index = i
      next
    end
    profit = stock_prices[i] - min_price
    if profit > max_profit
      max_profit = profit
      buy_sell_days = [min_index, i]
    end
  end
  print buy_sell_days
  buy_sell_days
end


stock_picker([17,3,6,9,15,8,6,1,10])
# [1, 4]
