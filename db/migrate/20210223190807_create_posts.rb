class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :employer_id
      t.text :description
      t.string :image_url
      t.integer :genre_id

      t.timestamps
    end
  end
end
