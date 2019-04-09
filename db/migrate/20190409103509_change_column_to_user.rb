class ChangeColumnToUser < ActiveRecord::Migration[5.2]
  def up
    change_column_null :users, :image_name, false, 0
    change_column :users, :image_name, :string, default: "default.jpg"
  end

  def down
    change_column_null :users, :image_name, true, nil
    change_column :users, :image_name, :string, default: nil
  end
end
