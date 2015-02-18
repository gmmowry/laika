class Trip
  include Mongoid::Document
  include Mongoid::Timestamps

  field :origin, type: Location
  field :destination, type: Location
  field :pitstop, type: String
  field :map_waypoints

  has_many :waypoints, class_name: 'Attraction'
  belongs_to :user

  validates_presence_of :origin, :destination
end
