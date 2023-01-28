class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true
  
    devise :database_authenticatable,
           :jwt_authenticatable,
           :registerable,
           jwt_revocation_strategy: JwtDenylist
  end
  
end
