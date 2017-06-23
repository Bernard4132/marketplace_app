class ChangeLocationIdToIntegerCasttype < ActiveRecord::Migration[5.0]
  def change
  	change_column :taggings, :location_id, 'integer USING CAST(location_id AS integer)'
  end
end
