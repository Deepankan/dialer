class Role < ActiveRecord::Base
	has_many :users
	scope :active, -> { where(status: true)}
end
