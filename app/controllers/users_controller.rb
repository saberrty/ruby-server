class UsersController < ApplicationController

  def create_user
    username = params['username']
    password = params['password']
    if username && password
      User.create({ password: password, username: username })
      render json: { users: User.find_by_username(username) }
    else
      render json: { mother: "fucker" }
    end
  end

  def delete_user
    username = params['username']
    if username
      User.find_by_username(username).delete
      render json: { delete: "success" }
    else
      render json: { delete: "failed" }
    end
  end

  def users_list
    render json: { users: User.all }
  end
end

