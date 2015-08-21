class CreateAuthorOrganizations < ActiveRecord::Migration
  def change
    create_table :author_organizations do |t|
      t.references :author, index: true, foreign_key: true
      t.references :organization, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
