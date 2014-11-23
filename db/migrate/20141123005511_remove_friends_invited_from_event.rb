class RemoveFriendsInvitedFromEvent < ActiveRecord::Migration
  def change
    remove_column :events, :friends_invited, :string
  end
end
