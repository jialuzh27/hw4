class SessionsController < ApplicationController
  def new
  end

  def create
    @session = User.new(params["session"])
    @session.save
    redirect_to "/"
  end

  def destroy
  end
end
  