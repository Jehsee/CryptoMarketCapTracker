desc "This task is called by the (Heroku scheduler) add-on and will collect todays snapshot of crypto marketcap list"
task :collect_todays_snapshot => :environment do
  response = HTTParty.get('https://api.coinmarketcap.com/v1/ticker/?start=0&limit=1000', format: :plain)
  list 	 = JSON.parse response
	
  Snapshot.create(date: Time.now, payload: list)
end