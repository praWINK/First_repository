class AddModelUserRefToQuestions < ActiveRecord::Migration
  def change
    add_reference :questions, :model_user, index: true, foreign_key: true
  end
end
