class Dancer < ApplicationRecord
  mount_uploader :resume, FileUploader
  belongs_to :genre, optional: true
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :about, :video, :first_name, :last_name, presence: true, on: :update

end
