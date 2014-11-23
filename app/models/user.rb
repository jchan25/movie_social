class User < ActiveRecord::Base
  validates :username, :presence => true
  validates :username, :uniqueness => true

  validates :first_name, :presence => true

  validates :last_name, :presence => true

  validates :city, :presence => true

  validates :state, :presence => true

  validates :email, :presence => true
  validates :email, :uniqueness => true

  has_many(:user_favorited_movies, {:class_name => "UserFavoritedMovie", :foreign_key => "user_id"})
  has_many(:events, {:class_name => "Event", :foreign_key => "event_id"})
end
