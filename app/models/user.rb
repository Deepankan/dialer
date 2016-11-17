class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role  
  has_one :user_profile     

  has_many :dialer_plans

  accepts_nested_attributes_for :dialer_plans ,  allow_destroy: true

  scope :active, -> { where(status: true)}

  def get_name
  	user_profile = self.user_profile
  	return user_profile.try(:first_name) + " " + user_profile.try(:last_name) if user_profile
  end
end
