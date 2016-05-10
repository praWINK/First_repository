class Solution < ActiveRecord::Base
  belongs_to :model_user
  belongs_to :questions
  has_many :comments, as: :commentable
  validates :model_user_id, :uniqueness => { :scope => :question_id, :message => "you are allowed to answer only once"}
end
