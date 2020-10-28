class UserController < ApplicationController
  def show
      id = params[:id]
      @userfind = User.find(params[:id])
      @comments = Gossip.where(user: @userfind)
  end
end
