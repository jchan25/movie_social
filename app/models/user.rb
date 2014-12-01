class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #validates :username, :uniqueness => true
  #validates :username, :presence => true
  #validates :first_name, :presence => true
  #validates :last_name, :presence => true
  #validates :city, :presence => true
  #validates :state, :presence => true

  validates :email, :presence => true
  validates :email, :uniqueness => true

  has_many(:user_favorited_movies, {:class_name => "UserFavoritedMovie", :foreign_key => "user_id"})
  has_many(:events, {:class_name => "Event", :foreign_key => "event_id"})
end
