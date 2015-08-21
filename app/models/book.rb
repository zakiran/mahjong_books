class Book < ActiveRecord::Base
  has_many :book_authors
  has_many :authors, through: :book_authors
  has_many :book_tags
  has_many :tags, through: :book_tags
end
