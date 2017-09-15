class CreateContactforms < ActiveRecord::Migration[5.0]
  def change
    create_table :contactforms do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :message

      t.timestamps
    end
  end
end
