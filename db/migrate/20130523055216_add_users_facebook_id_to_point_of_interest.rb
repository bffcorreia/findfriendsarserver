class AddUsersFacebookIdToPointOfInterest < ActiveRecord::Migration
  def change
    add_column :point_of_interests, :facebook_id, :string
  end
end
