class Post < ApplicationRecord
  belongs_to :employer 
  belongs_to :genre
end
