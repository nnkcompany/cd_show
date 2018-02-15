class Disc < ApplicationRecord

	has_many :songs
	belongs_to :disc

end
