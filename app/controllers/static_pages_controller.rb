class StaticPagesController < ApplicationController
	def success
		@url = "localhost:3000/links/"+ flash[:code]
	end
end