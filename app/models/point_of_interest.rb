class PointOfInterest < ActiveRecord::Base
  attr_accessible :description, :footnote, :imageURL, :lat, :lon, :title
end
