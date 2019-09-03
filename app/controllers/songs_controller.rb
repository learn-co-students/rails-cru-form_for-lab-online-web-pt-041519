class SongsController < ApplicationController
  def index
    @song = Song.all
  end

  def new
    @song = Song.new
  end

  def edit
    @song = show
  end

  def show
    @song= Song.find(params[:id])
 
  end

  def create
 
   a = song_params(:artist_id)
   g = song_params(:genre_id)
    @artist = Artist.find_or_create_by(name: a[:artist_id])
    @genre = Genre.find_or_create_by(name: g[:genre_id])
    @song = Song.create(song_params(:name))
    @song.artist = @artist
    @song.genre = @genre
    @song.save
  
    redirect_to song_path(@song)
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  private

  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
