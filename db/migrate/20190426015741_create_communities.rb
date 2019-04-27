class CreateCommunities < ActiveRecord::Migration[5.2]
  def change
    create_table :communities do |t|
      t.string :community_name, null: false
      t.string :community_pic, default: 'community_default_pic.jpg'
      t.integer :member_count
      t.string :region, null: false
      t.text :description, null: false
      t.integer :daihyo_id, null: false

      t.timestamps
    end
  end
end
