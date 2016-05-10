class ModelUser < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :questions
  has_many :solutions
  has_many :comments
  has_many :solutioned_questions, source: :questions, through: :solutions

def anscount
  "Answer"
end

end
