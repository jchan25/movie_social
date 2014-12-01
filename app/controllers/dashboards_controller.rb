class DashboardsController < ApplicationController

  def index
    @own_movies = Movie.all

    if current_user.present?
    @own_favorited_movies = current_user.user_favorited_movies
    else
    end


    @own_events = Event.all
  end

end
