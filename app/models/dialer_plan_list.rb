class DialerPlanList < ActiveRecord::Base
	belongs_to :dialer_plan
    has_one :dialer_avaliable

    

end
