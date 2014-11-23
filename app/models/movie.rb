class Movie < ActiveRecord::Base
  validates :name, :presence => true
  validates :name, :uniqueness => true
  validates :image_url, :presence => true
  validates :director, :presence => true
  validates :genre, :presence => true
  validates :synopsis, :presence => true
  validates :duration, :presence => true
  validates :actors, :presence => true
  validates :release_date, :presence => true

  has_many(:events, { :class_name => "Event", :foreign_key => "movie_id"})
  has_many(:user_favorited_movies, { :class_name => "UserFavoritedMovie", :foreign_key => "movie_id"})
  belongs_to :genre
end
