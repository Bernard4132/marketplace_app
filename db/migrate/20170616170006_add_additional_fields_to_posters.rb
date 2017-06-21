class AddAdditionalFieldsToPosters < ActiveRecord::Migration[5.0]
  def change
  	 add_column :posters, :company, :string
  	 add_column :posters, :phone1, :string
  	 add_column :posters, :phone2, :string
  end
end
