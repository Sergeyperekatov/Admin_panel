class Track  
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :user
  field :author, type: String
  field :name, type: String
  field :release_date, type: String
  field :image, type: String
  field :audio, type: String
  mount_uploader :audio, AudioUploader
  mount_uploader :image, ImageUploader
  validates :author, length: { maximum: 140 }, presence: true
validates :name, length: { maximum: 140 }, presence: true
validates :image, file_size: { less_than: 10.megabytes }
end
