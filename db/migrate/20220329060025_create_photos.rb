class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.integer :gallery_id
      t.string :title

      t.timestamps
    end
  end
end
