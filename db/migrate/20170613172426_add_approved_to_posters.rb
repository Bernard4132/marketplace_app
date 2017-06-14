class AddApprovedToPosters < ActiveRecord::Migration[5.0]
  def change
    add_column :posters, :approved, :boolean, default: false
  end
end
