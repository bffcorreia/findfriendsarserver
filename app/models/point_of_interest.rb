class PointOfInterest < ActiveRecord::Base
  attr_accessible :description, :footnote, :imageURL, :lat, :lon, :title, :anchor, :facebook_id
end
