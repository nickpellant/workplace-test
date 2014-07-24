class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.datetime :sold_at
      t.string :code
      t.integer :value

      t.timestamps
    end
  end
end
