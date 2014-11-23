class Event < ActiveRecord::Base
  validates :user_ID, :presence => true
  validates :theater_address, :presence => true
  validates :movie_id, :presence => true
  validates :datetime, :presence => true

 # belongs_to(:movie, {:class_name =>"Movie", :foreign_id => "movie_id"})
  belongs_to(:user, {:class_name =>"User", :foreign_key => "user_ID"})
  belongs_to :movie
  has_many :event_attendees
end
