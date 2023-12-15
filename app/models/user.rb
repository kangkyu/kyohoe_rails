class User < ApplicationRecord
  def admin?
    email == "kangkyu1111@gmail.com"
  end
end
