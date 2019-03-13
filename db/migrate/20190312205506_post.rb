class Post < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :practice_date, :date
  end
end
