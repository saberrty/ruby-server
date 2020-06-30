class UsersController < ApplicationController

  def create_user
    username = params['username']
    password = params['password']
    if username
      if User.find_by_username(username)
        render json: { reason: "username existed" }, status: "400"
        return
      end
    end
    if username && password
      user = User.create({ password: password, username: username })
      render json: { user: user }
    else
      render json: { mission: "failed" }, status: "500"
    end
  end

  def delete_user
    id = params['id']
    if id
      user = User.find_by_id(id)
      if user
        user.delete
        render json: { delete: "success" }
      end
      render json: { message: "no user" }, status: "404"
    else
      render json: { delete: "failed" }, status: "404"
    end
  end

  def login
    username = params['username']
    password = params['password']
    if username && password
      if user = User.find_by_username(username)
        if user.password == password
          render json: { status: true }
        end
      else
        render json: { reason: "no such user" }, status: "503"
      end
    else
      render json: { reason: "auth error" }, status: "503"
    end
  end

  def users_list
    render json: { users: User.all }
  end

end
