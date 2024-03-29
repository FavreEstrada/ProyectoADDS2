class EstadoOdtsController < ApplicationController
  # GET /estado_odts
  # GET /estado_odts.json
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
    @estado_odts = EstadoOdt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estado_odts }
    end
  end

  # GET /estado_odts/1
  # GET /estado_odts/1.json
  def show
    @estado_odt = EstadoOdt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @estado_odt }
    end
  end

  # GET /estado_odts/new
  # GET /estado_odts/new.json
  def new
    @estado_odt = EstadoOdt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @estado_odt }
    end
  end

  # GET /estado_odts/1/edit
  def edit
    @estado_odt = EstadoOdt.find(params[:id])
  end

  # POST /estado_odts
  # POST /estado_odts.json
  def create
    @estado_odt = EstadoOdt.new(params[:estado_odt])

    respond_to do |format|
      if @estado_odt.save
        format.html { redirect_to @estado_odt, notice: 'Estado odt was successfully created.' }
        format.json { render json: @estado_odt, status: :created, location: @estado_odt }
      else
        format.html { render action: "new" }
        format.json { render json: @estado_odt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /estado_odts/1
  # PUT /estado_odts/1.json
  def update
    @estado_odt = EstadoOdt.find(params[:id])

    respond_to do |format|
      if @estado_odt.update_attributes(params[:estado_odt])
        format.html { redirect_to @estado_odt, notice: 'Estado odt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @estado_odt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estado_odts/1
  # DELETE /estado_odts/1.json
  def destroy
    @estado_odt = EstadoOdt.find(params[:id])
    @estado_odt.destroy

    respond_to do |format|
      format.html { redirect_to estado_odts_url }
      format.json { head :no_content }
    end
  end
end
