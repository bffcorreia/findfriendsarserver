class CreatePointOfInterests < ActiveRecord::Migration
  def change
    create_table :point_of_interests do |t|
      t.string :footnote
      t.string :title
      t.float :lat
      t.float :lon
      t.string :imageURL
      t.string :description
    end
  end
end
