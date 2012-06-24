class PagesController < ApplicationController
  def dreamweaver1
    @users = User.all

    respond_to do |format|
      format.html 
      format.json { render json: @user }
    end
  end

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
end
