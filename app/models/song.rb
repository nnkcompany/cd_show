class Song < ApplicationRecord

	belongs_to :disc

validates :song_title, presence: true

end
