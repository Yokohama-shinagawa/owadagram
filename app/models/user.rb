class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :tweets
  
  mount_uploader :image, ImageUploader
  
  validates :name, presence: true
  validates :image, presence: true
  
  
end
