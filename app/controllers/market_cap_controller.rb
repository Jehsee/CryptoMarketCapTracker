class MarketCapController < ApplicationController
	def index
		@latest_snapshot = Snapshot.last.payload

		# @current_snapshot.each do 

		# end
	end

end
