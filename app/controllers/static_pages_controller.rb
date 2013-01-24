class StaticPagesController < ApplicationController

	def home
		@title = "ShareTabs | Home"
	end
	def success
		@url = "http://sharetabs.herokuapp.com/links/"+ flash[:code]
	end
end