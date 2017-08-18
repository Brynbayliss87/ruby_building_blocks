def stock_picker(prices)
  #takes an array of stock prices
  #returns a pair of days representing the best day to buy and sell



  min = prices[0]
  max = prices[0]  
  result = []  

  prices.each do |i|
    if i < min
      min = i
      max = i 
    else 
      max = i if i > max
    end
   result[0] = min
   result[1] = max
  end
  result
end
    
puts stock_picker([1,2,3,4,5]) 
    
    
  

