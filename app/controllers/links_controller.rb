class LinksController < ApplicationController
  
  def show
  	@title = "#ShareTabs#;" + Link.find_by_code(params[:id]).url
	# @title = Link.find(params[:id]).code
  end

  def create
  	@link = Link.new(url: params[:url])
  	cnt = 0
  	while(!@link.save() or cnt > 100) do
  		@link = Link.new(url: params[:url])
  		cnt += 1
  	end
  	flash[:code] = @link.code
  	redirect_to success_path
  end
end
