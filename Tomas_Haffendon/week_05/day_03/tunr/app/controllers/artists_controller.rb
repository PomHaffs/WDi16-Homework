class ArtistsController < ApplicationController

  def index
    @artists = Artist.all #All the artists in the DB global ref @artists
  end

  def show
      @artist = Artist.find params[:id] #[:id] gives ref to all availble info??
  end

  def new
    @artists = Artist.new #create a new version of Artist class....
  end

  def create
    artist = Artist.create( artist_params )
    redirect_to '/artists/#{artist.id}'
  end

  def edit
    @artist = Artist.find params[:id]
  end

  def update
    artist = Artist.find params[:id]
    artist.update( artist_params ) #This allows editing linked to PRIVATE
    redirect_to "/artists/#{artist.id}"
  end

  def destory
    artist = Artist.find params[:id]
    artist.destory
    redirect_to "/artists"
  end

  private
    def artist_params
      params.require(:artist).permit(:name, :image)
    end

end
