class ChangeProductToPoster < ActiveRecord::Migration[5.0]
  def change
  	rename_column :comments, :product_id, :poster_id
  end
end
