class OrdenTrabajosController < ApplicationController
  # GET /orden_trabajos
  # GET /orden_trabajos.json
  def index
    @orden_trabajos = OrdenTrabajo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orden_trabajos }
    end
  end

  # GET /orden_trabajos/1
  # GET /orden_trabajos/1.json
  def show
    @orden_trabajo = OrdenTrabajo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orden_trabajo }
    end
  end

  # GET /orden_trabajos/new
  # GET /orden_trabajos/new.json
  def new
    @orden_trabajo = OrdenTrabajo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @orden_trabajo }
    end
  end

  # GET /orden_trabajos/1/edit
  def edit
    @orden_trabajo = OrdenTrabajo.find(params[:id])
  end

  # POST /orden_trabajos
  # POST /orden_trabajos.json
  def create
    @orden_trabajo = OrdenTrabajo.new(params[:orden_trabajo])

    respond_to do |format|
      if @orden_trabajo.save
        format.html { redirect_to @orden_trabajo, notice: 'Orden trabajo was successfully created.' }
        format.json { render json: @orden_trabajo, status: :created, location: @orden_trabajo }
      else
        format.html { render action: "new" }
        format.json { render json: @orden_trabajo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orden_trabajos/1
  # PUT /orden_trabajos/1.json
  def update
    @orden_trabajo = OrdenTrabajo.find(params[:id])

    respond_to do |format|
      if @orden_trabajo.update_attributes(params[:orden_trabajo])
        format.html { redirect_to @orden_trabajo, notice: 'Orden trabajo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @orden_trabajo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orden_trabajos/1
  # DELETE /orden_trabajos/1.json
  def destroy
    @orden_trabajo = OrdenTrabajo.find(params[:id])
    @orden_trabajo.destroy

    respond_to do |format|
      format.html { redirect_to orden_trabajos_url }
      format.json { head :no_content }
    end
  end
end
