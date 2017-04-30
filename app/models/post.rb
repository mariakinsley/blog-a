class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, lenght: {minimum:5}
  validates :body, presence: true
end
