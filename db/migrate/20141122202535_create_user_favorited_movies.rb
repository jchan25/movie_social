class CreateUserFavoritedMovies < ActiveRecord::Migration
  def change
    create_table :user_favorited_movies do |t|
      t.integer :user_ID
      t.integer :movie_ID

      t.timestamps

    end
  end
end
