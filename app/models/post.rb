class Post < ApplicationRecord
  belongs_to :employer 
  belongs_to :genre
  validates :title, :description, presence: true
  validates :description, length: { minimum: 20 }


end
