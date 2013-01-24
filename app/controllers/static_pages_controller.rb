class StaticPagesController < ApplicationController
	def success
		@url = "http://sharetabs.herokuapp.com/links/"+ flash[:code]
	end
end