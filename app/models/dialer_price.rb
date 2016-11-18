class DialerPrice < ActiveRecord::Base
	scope :active, -> { where(status: true)}

	has_many :dialer_plans

	def self.get_list
		temp ={}
		
        self.active.map{|h| temp[h.name] = h.id}
        return temp
	end
end
