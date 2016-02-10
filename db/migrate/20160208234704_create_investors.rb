class CreateInvestors < ActiveRecord::Migration
  def change
    create_table :investors do |t|
      t.text :name
      t.text :company_name
      t.text :email_address
      t.text :password_digest
      t.text :website
      t.string :title
      t.text :profile_picture
      t.integer :investor_id

      t.timestamps null: false
    end
  end
end
