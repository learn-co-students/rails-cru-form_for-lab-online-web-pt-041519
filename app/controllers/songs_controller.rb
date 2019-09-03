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
 # this create method allows the user to pass in the name of the artist and name of the genre instead of passing in ids. 

  def create
 
   artist = song_params(:artist_id)
   genre = song_params(:genre_id)
    @artist = Artist.find_or_create_by(name: artist[:artist_id])
    @genre = Genre.find_or_create_by(name: genre[:genre_id])
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

 # These methods would pass the tests but require ids be passed in.
  # def create
  #   @song = Song.new(song_params)
  #   @song.save
  #   redirect_to song_path(@song)
  # end


  # def update
  #   @song = Song.find(params[:id])
  #   @song.update(song_params)
  #   redirect_to song_path(@song)
  # end

  # private

  #   def song_params
  #     params.require(:song).permit(:name, :artist_id, :genre_id)
  #   end
end
