class PagesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:home]

	def home
	end

	def dashboard
		setblizzardapi	
		diablo
	end

	def diablo
		client = Battlenet.D3Client
	end

	def setblizzardapi
		Battlenet.configure do |config|
			config.api_key = 'mk5r9un4n5asm6paxjhm3zuxz25yencx'
			config.region  = :us
		end
	end
	private :setblizzardapi

end
