class DialerQuantity < ActiveRecord::Base
	scope :active, -> { where(status: true)}
end
