class AddModelUserRefToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :model_user, index: true, foreign_key: true
  end
end
