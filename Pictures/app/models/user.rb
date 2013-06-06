class User < ActiveRecord::Base
  attr_accessible :email, :password, :username, :password_confirmation

  has_secure_password
  has_many :photo
  validates :email, uniqueness: true, presence: true
  validates :username, uniqueness: true, presence: 

  def pictures
  		return @pictures = Photo.where(:user_id => self.id)
  end
end