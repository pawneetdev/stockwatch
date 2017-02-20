class Stock < ActiveRecord::Base

	enum exchange: { NSE: 0, BSE: 1 }

end
