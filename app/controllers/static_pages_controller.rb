class StaticPagesController < ApplicationController

	def home
		@title = "Select-Share | Home"
	end
	def success
		@url = "http://select-share.herokuapp.com/links/"+ flash[:code]
	end
end