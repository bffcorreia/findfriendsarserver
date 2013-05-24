class AddUserIdToPointOfInterest < ActiveRecord::Migration
  def change
    add_column :point_of_interests, :user_id, :integer
    add_index :point_of_interests, :user_id
 
  end
end
