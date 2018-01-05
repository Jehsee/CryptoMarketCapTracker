class MarketCapController < ApplicationController
	def index
		@current_snapshot = Snapshot.last
	end

end
