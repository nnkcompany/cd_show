class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



# 一般的なメールアドレスのフォーマットチェック
  validates :zip, numericality: { only_integer: true }
  validates :tell, numericality: { only_integer: true }


  has_many :orders
  has_one :cart

  def soft_delete
    update(deleted_at: Time.now)
  end

  def active_for_authentication?
   !deleted_at
  end

end
