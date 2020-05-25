class CreateClocks < ActiveRecord::Migration[6.0]
  def change
    create_table :clocks do |t|
      t.integer :group_id
      t.string :name
      t.integer :hour
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :clocks, :group_id
  end
end
