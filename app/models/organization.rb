class Organization < ActiveRecord::Base
  has_many :author_organizations
  has_many :authors, through: :author_organizations
end
