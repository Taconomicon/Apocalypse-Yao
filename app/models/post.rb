class Post < ActiveRecord::Base
	validates :title, presence:true, length: {minimum: 1, maximum: 55}
	validates :content, presence:true, length: {minimum: 1}
	validates :tags, length: {maximum: 45}
	belongs_to :user
	has_many :comments
end
