class AlbumsController < ApplicationController

  def index
    @albums = Album.all #All the artists info ref @artists in index
  end

  def show
      @album = Album.find params[:id] #[:id] gives ref to all availble info??
  end

  def new
    @album = Album.new #create a new version of Artist class....
  end

  def create
    album = Album.create( album_params )
    redirect_to '/albums/#{album.id}'
  end

  def edit
    @album = Album.find params[:id]
  end

  def update
    album = Album.find params[:id]
    album.update( album_params ) #This allows editing linked to PRIVATE
    redirect_to "/albums/#{album.id}"
  end

  def destory
    album = Album.find params[:id]
    album.destory
    redirect_to "/albums"
  end

  private
    def album_params
      params.require(:album).permit(:name, :image)
    end
end
