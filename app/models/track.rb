class Track
  include Mongoid::Document
  include Mongoid::Timestamps

  field :author, type: String
  field :name, type: String
  field :release_date, type: String
end
