class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :platform
      t.string :serial
      t.string :manufacturer
      t.integer :version

      t.timestamps
    end
  end
end
