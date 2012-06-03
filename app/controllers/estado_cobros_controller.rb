class EstadoCobrosController < ApplicationController
  # GET /estado_cobros
  # GET /estado_cobros.json
  before_filter :authenticate_user!, :except => [:index]
  def index
    @estado_cobros = EstadoCobro.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estado_cobros }
    end
  end

  # GET /estado_cobros/1
  # GET /estado_cobros/1.json
  def show
    @estado_cobro = EstadoCobro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @estado_cobro }
    end
  end

  # GET /estado_cobros/new
  # GET /estado_cobros/new.json
  def new
    @estado_cobro = EstadoCobro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @estado_cobro }
    end
  end

  # GET /estado_cobros/1/edit
  def edit
    @estado_cobro = EstadoCobro.find(params[:id])
  end

  # POST /estado_cobros
  # POST /estado_cobros.json
  def create
    @estado_cobro = EstadoCobro.new(params[:estado_cobro])

    respond_to do |format|
      if @estado_cobro.save
        format.html { redirect_to @estado_cobro, notice: 'Estado cobro was successfully created.' }
        format.json { render json: @estado_cobro, status: :created, location: @estado_cobro }
      else
        format.html { render action: "new" }
        format.json { render json: @estado_cobro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /estado_cobros/1
  # PUT /estado_cobros/1.json
  def update
    @estado_cobro = EstadoCobro.find(params[:id])

    respond_to do |format|
      if @estado_cobro.update_attributes(params[:estado_cobro])
        format.html { redirect_to @estado_cobro, notice: 'Estado cobro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @estado_cobro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estado_cobros/1
  # DELETE /estado_cobros/1.json
  def destroy
    @estado_cobro = EstadoCobro.find(params[:id])
    @estado_cobro.destroy

    respond_to do |format|
      format.html { redirect_to estado_cobros_url }
      format.json { head :no_content }
    end
  end
end
