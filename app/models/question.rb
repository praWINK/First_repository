class Question < ActiveRecord::Base
  belongs_to :model_user
  has_many :solutions
  has_many :solutioned_model_user, source: :model_user, through: :solutions
  has_many :comments, as: :commentable
end
