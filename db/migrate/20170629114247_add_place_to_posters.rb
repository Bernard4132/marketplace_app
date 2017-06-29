class AddPlaceToPosters < ActiveRecord::Migration[5.0]
  def change
    add_column :posters, :place, :string
  end
end
