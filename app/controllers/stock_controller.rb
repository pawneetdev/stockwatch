class StockController < ApplicationController

	def index
		stocks = Stock.all
		

		response = HTTParty.get("https://www.google.com/finance/info?client=ig&q=NSE:BHEL,ACC:NSE")
		@json = JSON.parse(response.body[3..-1])
	end

end
