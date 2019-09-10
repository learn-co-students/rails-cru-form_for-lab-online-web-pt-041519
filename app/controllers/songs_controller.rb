class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(set_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def show
    set_song
  end

  def edit
    set_song
  end

  def update
    set_song
    @song.update(set_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def set_params(*args)
    params.require(:song).permit(*args)
  end
end
