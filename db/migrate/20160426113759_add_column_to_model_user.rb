class AddColumnToModelUser < ActiveRecord::Migration
  def change
    add_column :model_users, :first_name, :string
    add_column :model_users, :last_name, :string
  end
end
