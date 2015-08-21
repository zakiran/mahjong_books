class CreateBookTags < ActiveRecord::Migration
  def change
    create_table :book_tags do |t|
      t.references :book, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
