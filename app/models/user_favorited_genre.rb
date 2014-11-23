class UserFavoritedGenre < ActiveRecord::Base
 belongs_to(:user, {class_name:"User", foreign_key:"user_ID"})
 belongs_to(:genre, {class_name:"Genre", foreign_key:"genre_ID"})

end
