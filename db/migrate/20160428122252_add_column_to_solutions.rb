class AddColumnToSolutions < ActiveRecord::Migration
  def change
    add_column :solutions, :solution, :text
  end
end
