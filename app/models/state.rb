class State < ActiveRecord::Base
	scope :active, -> { where(status: true)}
    belongs_to :country
	has_many :cities

	accepts_nested_attributes_for :cities ,  allow_destroy: true

	
end
