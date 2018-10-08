class PagesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:home]

	def dashboard
		setapikey
	end

	def setapikey
		api_key = ENV["API_KEY"]
		@response = HTTParty.get("https://us.api.battle.net/d3/profile/Solid%231809/?locale=en_US&apikey=#{api_key}")
	end

	def diablo
	end
	
	private :setapikey
end
