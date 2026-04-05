def stock_picker(array)
  best_days = []
  
  array.reduce(0) do |best_profit, current_price|
    array.drop(array.index(current_price) + 1).each do |other_price|
      current_profit = other_price - current_price
      if current_profit > best_profit
        best_profit = current_profit
        best_days[0] = array.index(current_price)
        best_days[1] = array.index(other_price)
      end
    end
    best_profit
  end
  best_days
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
