class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @user = User.find_by(id: params[:id])
  end
  def new
    @user = User.new(name: params[:name],email: params[:email])
  end
  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      image_name: "nigaoe_sakaguchi_ango.png"
    )
    if @user.save
      flash[:notice] = "新規登録が完了しました"
      redirect_to("/users/index")
    else
      render("/users/new")
    end
  end
  def edit
    @user = User.find_by(id: params[:id])
  end
  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    if @user.save
      flash[:notice] = "編集が完了しました"
      redirect_to("/users/index")
    else
      render("/users/edit")
    end
  end
end
