class SongsController < ApplicationController

  def index
    @songs = Song.all #All the artists in the DB global ref @artists
  end

  def show
    @song = Song.find params[:id] #[:id] gives ref to all availble info??
  end

  def new
    @song = Song.new #create a new version of Artist class....
  end

  def create
    song = Song.create( song_params )
    redirect_to '/songs/#{song.id}'
  end

  def edit
    @song = Song.find params[:id]
  end

  def update
    song = Song.find params[:id]
    song.update( song_params ) #This allows editing linked to PRIVATE
    redirect_to "/songs/#{song.id}"
  end

  def destory
    song = Song.find params[:id]
    song.destory
    redirect_to "/songs"
  end

  private
    def song_params
      params.require(:song).permit(:name)
    end

end
