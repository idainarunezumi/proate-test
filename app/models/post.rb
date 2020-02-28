class Post < ApplicationRecord
  validates :content,{presence: true}
  validates :user.id,{presence: true}
end
