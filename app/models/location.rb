class Location
  include Mongoid::Document
  include Mongoid::Timestamps
  include LongLat

  field :longlat, type: Hash
  field :city, type: String
  field :region, type: String

  has_many :attractions

  validates_presence_of :city, :region, :longlat

end
