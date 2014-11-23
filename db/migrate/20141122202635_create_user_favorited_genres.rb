class CreateUserFavoritedGenres < ActiveRecord::Migration
  def change
    create_table :user_favorited_genres do |t|
      t.integer :user_ID
      t.integer :genre_ID

      t.timestamps

    end
  end
end
