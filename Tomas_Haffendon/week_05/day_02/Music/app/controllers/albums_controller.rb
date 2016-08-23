class AlbumsController < ApplicationController

  def index
    @albums = Albums.
  end

  def new
  end

  def edit
  end

  def show
  end

  private
    def album_params
      params.require(:artist).permit(:name, :style, :image)
    end

end
