class AddUsersCommunityidDefault < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :community_id, :integer, :default => 0
  end
end
