class SongsController < ApplicationController

  def index 
    response = HTTP.get("https://freesound.org/apiv2/search/text/?query=#{params[:search]}")
    render json: response.parse(:json)
  end   
end
