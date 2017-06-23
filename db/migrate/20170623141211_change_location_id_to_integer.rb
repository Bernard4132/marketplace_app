class ChangeLocationIdToInteger < ActiveRecord::Migration[5.0]
  def change
  	change_column :taggings, :location_id, :integer
  end
end
