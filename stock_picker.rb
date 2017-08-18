def stock_picker(prices)
  #takes an array of stock prices
  #returns a pair of days representing the best day to buy and sell

  min = prices[0]
  max = prices[0]  
  result = []  
  high_result = [0, 0]

  prices.each do |i|
    if i < min
      min = i
      max = i 
    else 
      max = i if i > max
    end
   result[0] = min
   result[1] = max

   if high_result[1] - high_result[0] < result[1] - result[0]
     high_result[0] = result[0] 
     high_result[1] = result[1] 
   end
  end
  high_result[0] = prices.find_index(high_result[0])
  high_result[1] = prices.find_index(high_result[1])  
  high_result
end
    
 
    
    
  

