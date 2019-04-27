class Community < ApplicationRecord
  mount_uploader :community_pic, ImageUploader

  def self.search(search)
  if search
    Community.where(['(description LIKE ?) OR (community_name LIKE ?)', "%#{search}%", "%#{search}%"])
  else
    Community.all
  end
end
end
