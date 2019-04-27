class RemoveteamNameTouser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :community_id, :integer
    remove_column :users, :team_name, :string
  end
end
