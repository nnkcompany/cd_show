class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def soft_delete
    update(deleted_at: Time.now)
  end

  def active_for_authentication?
   !deleted_at
  end


  has_many :addresses
  has_many :orders
  has_one :cart

end
