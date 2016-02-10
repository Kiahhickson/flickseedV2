class CreateSwipes < ActiveRecord::Migration
  def change
    create_table :swipes do |t|
      t.integer :founder_id
      t.integer :investor_id
      t.boolean :favourite

      t.timestamps null: false
    end
  end
end
