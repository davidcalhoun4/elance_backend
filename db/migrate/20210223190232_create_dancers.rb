class CreateDancers < ActiveRecord::Migration[6.0]
  def change
    create_table :dancers do |t|
      t.string :password_digest
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :image_url
      t.text :resume
      t.text :about
      t.string :video
      t.integer :genre_id

      t.timestamps
    end
  end
end
