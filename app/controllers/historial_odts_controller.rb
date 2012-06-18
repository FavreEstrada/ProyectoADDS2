class HistorialOdtsController < ApplicationController
  # GET /historial_odts
  # GET /historial_odts.json
  def index
    @historial_odts = HistorialOdt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @historial_odts }
    end
  end

  # GET /historial_odts/1
  # GET /historial_odts/1.json
  def show
    @historial_odt = HistorialOdt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @historial_odt }
    end
  end

  # GET /historial_odts/new
  # GET /historial_odts/new.json
  def new
    @historial_odt = HistorialOdt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @historial_odt }
    end
  end

  # GET /historial_odts/1/edit
  def edit
    @historial_odt = HistorialOdt.find(params[:id])
  end

  # POST /historial_odts
  # POST /historial_odts.json
  def create
    @historial_odt = HistorialOdt.new(params[:historial_odt])

    respond_to do |format|
      if @historial_odt.save
        format.html { redirect_to @historial_odt, notice: 'Historial odt was successfully created.' }
        format.json { render json: @historial_odt, status: :created, location: @historial_odt }
      else
        format.html { render action: "new" }
        format.json { render json: @historial_odt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /historial_odts/1
  # PUT /historial_odts/1.json
  def update
    @historial_odt = HistorialOdt.find(params[:id])

    respond_to do |format|
      if @historial_odt.update_attributes(params[:historial_odt])
        format.html { redirect_to @historial_odt, notice: 'Historial odt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @historial_odt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historial_odts/1
  # DELETE /historial_odts/1.json
  def destroy
    @historial_odt = HistorialOdt.find(params[:id])
    @historial_odt.destroy

    respond_to do |format|
      format.html { redirect_to historial_odts_url }
      format.json { head :no_content }
    end
  end
end
