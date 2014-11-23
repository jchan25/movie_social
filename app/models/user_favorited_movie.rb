class UserFavoritedMovie < ActiveRecord::Base
 belongs_to(:user, { :class_name => "User", :foreign_key =>"user_ID"})
 belongs_to(:movie, { :class_name => "Movie", :foreign_key =>"movie_ID"})
end
