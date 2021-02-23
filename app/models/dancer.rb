class Dancer < ApplicationRecord
  belongs_to :genre 
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
