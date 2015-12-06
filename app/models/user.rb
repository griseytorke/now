class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable 

  has_many :posts


  # for Geocoder gem; not functional at time of submission
  # geocoded_by :address
  # will only make another API requests if address has changed
  #after_validation :geocode, :if => :address_changed? 
  
end
