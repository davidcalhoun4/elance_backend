class Api::GenresController < ApplicationController

  def index 
    @genres = Genre.all
    render "index.json.jb"
  end

end
