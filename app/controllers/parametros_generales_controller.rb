class ParametrosGeneralesController < ApplicationController
  # GET /parametros_generales
  # GET /parametros_generales.json
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
    @parametros_generales = ParametrosGenerale.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @parametros_generales }
    end
  end

  # GET /parametros_generales/1
  # GET /parametros_generales/1.json
  def show
    @parametros_generale = ParametrosGenerale.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @parametros_generale }
    end
  end

  # GET /parametros_generales/new
  # GET /parametros_generales/new.json
  def new
    @parametros_generale = ParametrosGenerale.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @parametros_generale }
    end
  end

  # GET /parametros_generales/1/edit
  def edit
    @parametros_generale = ParametrosGenerale.find(params[:id])
  end

  # POST /parametros_generales
  # POST /parametros_generales.json
  def create
    @parametros_generale = ParametrosGenerale.new(params[:parametros_generale])

    respond_to do |format|
      if @parametros_generale.save
        format.html { redirect_to @parametros_generale, notice: 'Parametros generale was successfully created.' }
        format.json { render json: @parametros_generale, status: :created, location: @parametros_generale }
      else
        format.html { render action: "new" }
        format.json { render json: @parametros_generale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /parametros_generales/1
  # PUT /parametros_generales/1.json
  def update
    @parametros_generale = ParametrosGenerale.find(params[:id])

    respond_to do |format|
      if @parametros_generale.update_attributes(params[:parametros_generale])
        format.html { redirect_to @parametros_generale, notice: 'Parametros generale was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @parametros_generale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parametros_generales/1
  # DELETE /parametros_generales/1.json
  def destroy
    @parametros_generale = ParametrosGenerale.find(params[:id])
    @parametros_generale.destroy

    respond_to do |format|
      format.html { redirect_to parametros_generales_url }
      format.json { head :no_content }
    end
  end
end
