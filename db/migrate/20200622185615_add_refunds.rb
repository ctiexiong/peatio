class AddRefunds < ActiveRecord::Migration[5.2]
  def change
    create_table :refunds do |t|
      t.references :deposit, null: false
      t.integer :state, null: false, default: 0
      t.string :address, null: false

      t.timestamps
    end
  end
end
