class Dancer < ApplicationRecord
  belongs_to :genre 
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :resume, presence: true
  validates :about, presence: true
end
