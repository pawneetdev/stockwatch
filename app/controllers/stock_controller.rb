class StockController < ApplicationController

	def index
		stocks = Stock.all

		url = ""

		i=0

		stocks.each do |stock|
			if i==0
				url+= stock.exchange + ":" + stock.name
			else
				url+= "," +stock.exchange + ":" + stock.name
			end
			i+=1
		end

		response = HTTParty.get("https://www.google.com/finance/info?client=ig&q=" + url)
		@stocks = JSON.parse(response.body[3..-1])
	end

end
