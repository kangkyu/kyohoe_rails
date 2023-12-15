class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true

  def admin?
    email == "kangkyu1111@gmail.com"
  end
end
