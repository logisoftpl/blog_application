class AddAddressToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :address, foreign_key: { on_delete: :cascade }
  end
end
