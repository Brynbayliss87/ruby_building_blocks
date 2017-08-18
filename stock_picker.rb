def stock_picker(prices)
  #takes an array of stock prices
  #returns a pair of days representing the best day to buy and sell

  pick = [array[0], array[1]]
  
  while array.length > 0 do
    while i < array.length do
      buy = array[0]
      sell = array[i]
  
      pick[0] = buy && pick[1] = sell if sell - buy > pick[0] - pick[1]

      array.shift
  
    end
  end
  pick
end
      
  
    
    
  

