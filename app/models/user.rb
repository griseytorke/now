class User < ActiveRecord::Base
  #attr_accessor :name, :email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable 

  has_many :posts



  geocoded_by :address
  # will only make another API requests if address has changed
  after_validation :geocode, :if => :address_changed? 
  
end
