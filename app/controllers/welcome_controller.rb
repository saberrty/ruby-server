class WelcomeController < ApplicationController
  def index
    @records = User.all
  end
end
