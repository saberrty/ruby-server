class UserSessionDefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default :users, :authed, false
  end
end
