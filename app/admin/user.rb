ActiveAdmin.register User do
  index do
    column :name
    column :email
    column :facebook_id
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end

  filter :name
  filter :email
  filter :facebook_id

  form do |f|
    f.inputs "User Details" do
      f.input :name
      f.input :email
      f.input :facebook_id
      f.input :password
      f.input :password_confirmation
    end
    f.buttons
  end

  show do
    attributes_table do
      row :name
      row :email
      row :authentication_token
      row :confirmed_at
      row :current_sign_in_at
      row :last_sign_in_at
      row :sign_in_count
    end
    active_admin_comments
  end
end