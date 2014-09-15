def stock_picker daywise_prices=[17,3,6,9,15,8,6,1,10]
	buy_day, sell_day, profit = 0, 0, 0
	daywise_prices[0..-2].each_with_index do |buy_price, i|
		daywise_prices[i+1..-1].each_with_index do |sell_price, j|
			(profit = sell_price - buy_price) && (buy_day, sell_day = i , i+1+j) if profit < sell_price - buy_price
		end
	end 
return [buy_day, sell_day]
end

p stock_picker