class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_ID
      t.string :friends_invited
      t.text :theater_address
      t.integer :movie_id
      t.datetime :datetime

      t.timestamps

    end
  end
end
