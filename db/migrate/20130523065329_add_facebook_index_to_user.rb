class AddFacebookIndexToUser < ActiveRecord::Migration
  def up
    add_index  :users, :facebook_id  
  end

  def down
    remove_index  :users, :facebook_id 
  end

end
