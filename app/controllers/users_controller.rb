class UsersController < ApplicationController

  def create_user
    username = params['username']
    password = params['password']
    if username && password
      user = User.create({ password: password, username: username })
      render json: { user: user }
    else
      render json: { mother: "failed" }
    end
  end

  def delete_user
    id = params['id']
    if id
      User.find_by_id(id).delete
      render json: { delete: "success" }
    else
      render json: { delete: "failed" }
    end
  end

  def users_list
    render json: { users: User.all }
  end
end

