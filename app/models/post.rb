class Post < ActiveRecord::Base
	validates :title, presence:true, length: {minimum: 1, maximum: 67}
	validates :content, presence:true, length: {minimum: 1}
	belongs_to :user
	has_many :comments
end
