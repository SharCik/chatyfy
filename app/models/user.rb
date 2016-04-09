

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :conversations, :foreign_key => :sender_id

    mount_uploader :picture, PictureUploader



  validates_presence_of   :picture
  validates_integrity_of  :picture
  validates_processing_of :picture
end
