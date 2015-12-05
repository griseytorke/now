class Post < ActiveRecord::Base
	belongs_to :user

	# make sure post title and content are not blank
	validates :title, presence: true, length: { maximum: 200 }
	validates :content, presence: true, length: { maximum: 200 }
end
