class DeleteCategoryFromProps < ActiveRecord::Migration[5.0]
  def change
    remove_column :props, :category
  end
end
