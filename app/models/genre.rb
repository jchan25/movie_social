class Genre < ActiveRecord::Base
 validates :genre_name, :uniqueness => true
 has_many(:user_favorited_genres, {:class_name => "UserFavoritedGenre", :foreign_key => "genre_id"})
 has_many :movies
end
