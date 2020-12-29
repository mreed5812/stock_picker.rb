stocks = [17,3,6,9,15,8,6,1,10]

def stock_picker(stocks)
    
    best_days = [0,0] #[price,day]

    stocks.each_with_index do |buy_price, buy_day|
        stocks.each_with_index do |sell_price, sell_day|
          if sell_day > buy_day
            if (sell_price - buy_price) > (stocks[best_days[1]] - stocks[best_days[0]])
              best_days = [buy_day, sell_day]
            end
          end
        end
    end

    best_days
end

p stock_picker(stocks)