class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.references :model_user
      t.references :question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
