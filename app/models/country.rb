class Country < ActiveRecord::Base
	
	scope :active, -> { where(status: true)}

	has_many :states
	has_many :cities

	after_save :set_country

	accepts_nested_attributes_for :states ,  allow_destroy: true


	def set_country
		self.states.map{|h| h.cities.update_all(country_id: self.id)}
	end

end
