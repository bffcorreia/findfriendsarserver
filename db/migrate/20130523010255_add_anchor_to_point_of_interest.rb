class AddAnchorToPointOfInterest < ActiveRecord::Migration
  def change
    add_column :point_of_interests, :anchor, :string
  end
end
