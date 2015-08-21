class AuthorOrganization < ActiveRecord::Base
  belongs_to :author
  belongs_to :organization
end
