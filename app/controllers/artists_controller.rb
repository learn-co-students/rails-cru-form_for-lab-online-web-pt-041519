class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(set_params(:name, :bio)) # CREATE set_params METHOD
    redirect_to artist_path(@artist)
  end

  def show
    set_artist
  end

  def edit
    set_artist
  end

  def update
    set_artist
    @artist.update(set_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def set_params(*args)
    params.require(:artist).permit(*args)
  end
end
