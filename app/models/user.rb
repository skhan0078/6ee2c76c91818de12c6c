class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Search

  field :firstName, type: String
  field :lastName, type: String
  field :email, type: String
  search_in :firstName, :lastName, :email
end
