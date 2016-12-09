class CreateJoinTableCategoriesProps < ActiveRecord::Migration[5.0]
  def change
    create_join_table :categories, :props do |t|
      # t.index [:category_id, :prop_id]
      # t.index [:prop_id, :category_id]
    end
  end
end
