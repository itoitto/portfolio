class Post < ApplicationRecord
  validates :practice_name, {presence: true}
  validates :practice_content, {presence: true}
  validates :practice_date, {presence: true}
end
