class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :csv

      t.timestamps
    end
  end
end
