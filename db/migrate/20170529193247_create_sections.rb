class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.integer :poster_id
      t.integer :category_id

      t.timestamps
    end
  end
end
