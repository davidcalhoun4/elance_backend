class Dancer < ApplicationRecord
  belongs_to :genre 
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :first_name, :last_name, presence: true
  validates :resume, :about, :video, :image, presence: true, on: :update
end
