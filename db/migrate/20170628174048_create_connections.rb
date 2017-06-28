class CreateConnections < ActiveRecord::Migration[5.0]
  def change
    create_table :connections do |t|
      t.integer :poster_id
      t.integer :area_id

      t.timestamps
    end
  end
end
