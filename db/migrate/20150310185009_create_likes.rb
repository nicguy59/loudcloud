class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
   	  t.references :songs, null: false

      t.timestamps null: false
    end
  end
end
