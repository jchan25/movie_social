class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :image_url
      t.string :director
      t.string :genre
      t.text :synopsis
      t.integer :duration
      t.date :release_date

      t.timestamps

    end
  end
end
