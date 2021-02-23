class CreateEmployers < ActiveRecord::Migration[6.0]
  def change
    create_table :employers do |t|
      t.string :password_digest
      t.string :email
      t.string :company_name
      t.string :image_url
      t.text :description
      t.string :type

      t.timestamps
    end
  end
end
