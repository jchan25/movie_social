class CreateEventAttendees < ActiveRecord::Migration
  def change
    create_table :event_attendees do |t|
      t.integer :event_id
      t.integer :user_id
      t.boolean :status

      t.timestamps

    end
  end
end
