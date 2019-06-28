class Track  
  include Mongoid::Document
  include Mongoid::Timestamps

  field :author, type: String
  field :name, type: String
  field :release_date, type: String
  field :image, type: String
  field :audio, type: String
  mount_uploader :audio, AudioUploader
  mount_uploader :image, ImageUploader
end
