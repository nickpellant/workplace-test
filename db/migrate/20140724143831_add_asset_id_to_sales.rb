class AddAssetIdToSales < ActiveRecord::Migration
  def change
    add_column :sales, :asset_id, :integer
  end
end
