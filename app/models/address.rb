class Address < ApplicationRecord

	has_many :orders

	belongs_to :user
  validates :zip, numericality: { only_integer: true }
  validates :tell, numericality: { only_integer: true }

end
