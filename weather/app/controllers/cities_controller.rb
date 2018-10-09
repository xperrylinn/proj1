class CitiesController < ApplicationController
	# Display all cities or a specific one - Get
	def view
 		render 'view'
	end		

	# Display a from to creat a new City - Get
	def new
		render 'new'
	end
	
	# Update the information of a city - Get
	def update
		render 'update'
	end

	# Create a nee city - POST
	def create
		newCity = City.new(params)
		newCity.save
		render 'view'
	end
end
