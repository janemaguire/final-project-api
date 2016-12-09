class CreateProps < ActiveRecord::Migration[5.0]
  def change
    create_table :props do |t|
      t.string :name
      t.string :image
      t.string :description
      t.references :user, foreign_key: true
      t.string :category
      t.boolean :available

      t.timestamps
    end
  end
end
