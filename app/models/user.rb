class User < ApplicationRecord
  validates :name, {presence: true}
  validates :email, {presence: true, uniquness: true}
end
