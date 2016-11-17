class City < ActiveRecord::Base
	scope :active, -> { where(status: true)}
	belongs_to :country
	belongs_to :state
end
