class PagesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:home]

	def dashboard
	end

	def setapikey
	end

	def diablo
	end
	
	private :setapikey
end
