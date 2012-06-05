class BarriosController < ApplicationController
  # GET /barrios
  # GET /barrios.json
 #before_filter :authenticate_user!, :except => [:index]
  before_filter :validate_admin

  def validate_admin
    if !(user_signed_in?) || (current_user.perfil.Nombre =! "Administrador")
	redirect_to root_path
    else
      current_user.perfil.Nombre = "Administrador"
    end
  end
 
  def index
    @barrios = Barrio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @barrios }
    end
  end

  # GET /barrios/1
  # GET /barrios/1.json
  def show
    @barrio = Barrio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @barrio }
    end
  end

  # GET /barrios/new
  # GET /barrios/new.json
  def new
    @barrio = Barrio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @barrio }
    end
  end

  # GET /barrios/1/edit
  def edit
    @barrio = Barrio.find(params[:id])
  end

  # POST /barrios
  # POST /barrios.json
  def create
    @barrio = Barrio.new(params[:barrio])

    respond_to do |format|
      if @barrio.save
        format.html { redirect_to @barrio, notice: 'Barrio was successfully created.' }
        format.json { render json: @barrio, status: :created, location: @barrio }
      else
        format.html { render action: "new" }
        format.json { render json: @barrio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /barrios/1
  # PUT /barrios/1.json
  def update
    @barrio = Barrio.find(params[:id])

    respond_to do |format|
      if @barrio.update_attributes(params[:barrio])
        format.html { redirect_to @barrio, notice: 'Barrio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @barrio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barrios/1
  # DELETE /barrios/1.json
  def destroy
    @barrio = Barrio.find(params[:id])
    @barrio.destroy

    respond_to do |format|
      format.html { redirect_to barrios_url }
      format.json { head :no_content }
    end
  end
end
