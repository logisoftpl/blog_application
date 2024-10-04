class AddCategoryToPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :category, null: false, foreign_key: { on_delete: :cascade }
  end
end
