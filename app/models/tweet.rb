class Tweet < ActiveRecord::Base
	belongs_to :zombie
	validates :status, presence: true, length: { maximum: 40 }
end
