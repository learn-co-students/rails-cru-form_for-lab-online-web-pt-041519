class ArtistsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private
    def artist_params
      params.require(:artist).permit(:name, :bio)
    end

end
