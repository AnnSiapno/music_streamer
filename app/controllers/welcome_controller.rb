class WelcomeController < ApplicationController

  def index
    @user = current_user
    @user_playlists = Playlist.where(user_id: @user.id)
  end

<<<<<<< HEAD
  def search(input)
    @search = Song.search(params[:search])
    @resultsName = Song.where(title: @search)
    @resultsGenre = Song.where(genre: @search)
    @resultsArtist = Song.where(artist: @search)
    @resultsYear = Song.where(year: @search)
=======
  def search()
    line = '--------------------------------------------'
    @search = '%' + params[:search] + '%'
    @resultsName = Song.where("title LIKE '#{@search}'")
    @resultsGenre = Song.where("genre LIKE '#{@search}'")
    @resultsArtist = Song.where("artist LIKE '#{@search}'")
    @resultsYear = Song.where("year LIKE '#{@search}'")
>>>>>>> 4df2179942b1010ed8b1542315f2ab464f3bf992
  end

end
