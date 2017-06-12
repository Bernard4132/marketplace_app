class AddPosterimageToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :posterimage, :string
  end
end
