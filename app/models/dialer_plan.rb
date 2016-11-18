class DialerPlan < ActiveRecord::Base
	scope :active, -> { where(status: true)}
	belongs_to :user

	has_many :dialer_plan_lists
	
    belongs_to :dialer_price

	accepts_nested_attributes_for :dialer_plan_lists ,  allow_destroy: true
end
