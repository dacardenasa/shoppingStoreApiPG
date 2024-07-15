class RemoveFieldNameFromProduct < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :image_uri, :string
  end
end
