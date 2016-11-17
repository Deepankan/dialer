class DialerAvaliable < ActiveRecord::Base
	scope :active, -> { where(status: true)}

	belongs_to :dialer_plan_list

	def self.get_list
		temp ={}
        DialerAvaliable.active.map{|h| temp[h.name] = h.id}
        return temp
	end
end
