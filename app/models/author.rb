class Author < ActiveRecord::Base
  has_many :book_authors
  has_many :books, through: :book_authors
  has_many :author_organizations
  has_many :organizations, through: :author_organizations
end
