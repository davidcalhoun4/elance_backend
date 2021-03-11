class Dancer < ApplicationRecord
  belongs_to :genre, optional: true 
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :resume, :about, :video, :first_name, :last_name, presence: true, on: :update

end
