class UserFavoritedMovie < ActiveRecord::Base
 belongs_to(:user, { :class_name => "User", :foreign_key =>"user_ID"})
 belongs_to(:movie, { :class_name => "Movie", :foreign_key =>"movie_ID"})

 validates :movie, :presence => true
 validates :user, :presence => true

 validates_uniqueness_of :user_ID, scope: :movie_ID
 #validates :user_ID :uniqueness => true
end
