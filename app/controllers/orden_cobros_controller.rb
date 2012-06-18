class OrdenCobrosController < ApplicationController
  # GET /orden_cobros
  # GET /orden_cobros.json
  def index
    @orden_cobros = OrdenCobro.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orden_cobros }
    end
  end

  # GET /orden_cobros/1
  # GET /orden_cobros/1.json
  def show
    @orden_cobro = OrdenCobro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orden_cobro }
    end
  end

  # GET /orden_cobros/new
  # GET /orden_cobros/new.json
  def new
    @orden_cobro = OrdenCobro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @orden_cobro }
    end
  end

  # GET /orden_cobros/1/edit
  def edit
    @orden_cobro = OrdenCobro.find(params[:id])
  end

  # POST /orden_cobros
  # POST /orden_cobros.json
  def create
    @orden_cobro = OrdenCobro.new(params[:orden_cobro])

    respond_to do |format|
      if @orden_cobro.save
        format.html { redirect_to @orden_cobro, notice: 'Orden cobro was successfully created.' }
        format.json { render json: @orden_cobro, status: :created, location: @orden_cobro }
      else
        format.html { render action: "new" }
        format.json { render json: @orden_cobro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orden_cobros/1
  # PUT /orden_cobros/1.json
  def update
    @orden_cobro = OrdenCobro.find(params[:id])

    respond_to do |format|
      if @orden_cobro.update_attributes(params[:orden_cobro])
        format.html { redirect_to @orden_cobro, notice: 'Orden cobro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @orden_cobro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orden_cobros/1
  # DELETE /orden_cobros/1.json
  def destroy
    @orden_cobro = OrdenCobro.find(params[:id])
    @orden_cobro.destroy

    respond_to do |format|
      format.html { redirect_to orden_cobros_url }
      format.json { head :no_content }
    end
  end
end
