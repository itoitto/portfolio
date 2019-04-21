class User < ApplicationRecord::Base
  validates :username, {presence: true}
  validates :password, {presence: true}
  validates :password_confirmation, {presence: true}
end
