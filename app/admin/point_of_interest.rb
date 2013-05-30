ActiveAdmin.register PointOfInterest do
  index do
    column :id
    column :title
    column :footnote
    column :description
    column :imageURL
    column :lat
    column :lon
    column :anchor
    column :facebook_id
    default_actions
  end

  filter :id
  filter :title
  filter :lat
  filter :lon

  form do |f|
    f.inputs "Point of Interest Details" do
      f.input :title
      f.input :footnote
      f.input :description
      f.input :imageURL
      f.input :lat
      f.input :lon
      f.input :anchor
      f.input :facebook_id, :as => :select, :collection => User.all
    end
    f.buttons
  end

  show do
    attributes_table do
      row :title
      row :title
      row :footnote
      row :description
      row :imageURL
      row :lat
      row :lon
      row :anchor
      row :facebook_id
    end
    active_admin_comments
  end
end