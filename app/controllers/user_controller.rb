class UserController < ApplicationController
 before_filter :authenticate_user!, :except => [:index]
  before_filter :validate_admin

  def validate_admin
    if !user_signed_in? || current_user.perfil.Nombre =! "Administrador"
	
	redirect_to root_path
    else
      current_user.perfil.Nombre = "Administrador"
    end
  end
 
  def index
    if user_signed_in? && current_user.perfil.Nombre == "Administrador"  
        @users = User.all
        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @users }
        end
    else
        redirect_to root_path
    end
  end
    
  def show
  end

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  def destroy
  end
end
