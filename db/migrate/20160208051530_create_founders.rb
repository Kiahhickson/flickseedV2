class CreateFounders < ActiveRecord::Migration
  def change
    create_table :founders do |t|
      t.text :name
      t.integer :founder_id
      t.text :company_name
      t.text :email_address
      t.text :password_digest
      t.text :website
      t.text :profile_picture
      t.text :description
      t.text :industry
      t.text :capital_required
      t.text :equity_share
      t.text :video
      t.text :image_one
      t.text :image_two
      t.text :image_three
      t.text :image_four

      t.timestamps null: false
    end
  end
end
