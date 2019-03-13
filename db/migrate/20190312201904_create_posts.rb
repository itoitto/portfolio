class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :practice_name
      t.text :practice_content

      t.timestamps
    end
  end
end
