class AddAvatarToModelUsers < ActiveRecord::Migration
  def change
    add_column :model_users, :avatar, :string
  end
end
