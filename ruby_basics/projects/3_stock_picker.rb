# Problem : given stocks value find best buy and sell days 
# > stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12
# 
#
 
# Logic : 
# we want to maximize profit = selling_price - buying_price 
# Imp -> selling is after buying so that is the what we need to keep a track of 
#  lowest seen till now (not in the complete array but till now)
# So loop over the stocks array -> (init lowest as stocks[0])
# keep comparing every stock value with the lowest -> update lowest if we find new lowest
# keep a track of the profit = curr_value - lowest (keep max of this )
# But we need the days so instead of keeping value we keep the index (value = stocks[index])
# we return index array 
#

def stock_picker(stocks)
  min_price_day = 0
  max_profit = 0
  buy = 0
  sell = 0
  stocks.each_with_index do |curr_value, i|
    # check lowest first 
    min_price_day = i if curr_value < stocks[min_price_day]
    profit = curr_value - stocks[min_price_day]
    if profit > max_profit
      sell = i
      buy = min_price_day
      max_profit = profit
    end
  end
  res = []
  res.push(buy)
  res.push(sell)
  res
end

puts("res : #{stock_picker([17,3,6,9,15,8,6,1,10])}")