class Employer < ApplicationRecord
  has_many :posts 
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :company_name, presence: true
  validates :description, presence: true
end
