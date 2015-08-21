class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.date :published_on
      t.integer :price
      t.string :link_str
      t.string :link_pic

      t.timestamps null: false
    end
  end
end
