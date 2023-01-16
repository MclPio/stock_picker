stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(stock_prices)
  profit = []
  stock_prices.each_with_index do |day, idx|
    if stock_prices[idx+1..-1] == []
      break
    end
    profit.push([stock_prices[idx+1..-1].max-day, idx, stock_prices.index(stock_prices[idx+1..-1].max)])
  end
  profit.max[1,2]
end

p stock_picker(stock_prices)