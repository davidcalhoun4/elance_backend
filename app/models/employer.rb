class Employer < ApplicationRecord
  has_many :posts, dependent: :destroy 
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :company_name, presence: true, on: :update
  # validates :description, presence: true
end
