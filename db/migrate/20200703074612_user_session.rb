class UserSession < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :session_id, :string
    add_column :users, :authed, :boolean, defualt: false
  end
end
