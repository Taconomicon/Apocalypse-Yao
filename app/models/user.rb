class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :authentication_token
  has_many :posts
  has_many :comments

  validates :bgcolor, length: {maximum: 22}
  validates :tbcolor, length: {maximum: 22}
  validates :txtcolor, length: {maximum: 22}
  validates :title, length: {maximum: 50}
  validates :name, length: {maximum: 20}

  has_attached_file :background, :styles => {:back => "300x300<"}, :default_url => "/images/:style/transparent.png"
  validates_attachment_content_type :background, :content_type => /\Aimage\/.*\Z/

  has_attached_file :titlebar, :styles => {:bar => "35x1238<"}, :default_url => "/images/:style/transparent.png"
  validates_attachment_content_type :titlebar, :content_type => /\Aimage\/.*\Z/

  has_attached_file :avatar, :styles => {:medium => "117x117<", :thumb => "100x100#"}, :default_url => "/images/:style/avatar.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
