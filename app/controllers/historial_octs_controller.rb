class HistorialOctsController < ApplicationController
  # GET /historial_octs
  # GET /historial_octs.json
  def index
    @historial_octs = HistorialOct.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @historial_octs }
    end
  end

  # GET /historial_octs/1
  # GET /historial_octs/1.json
  def show
    @historial_oct = HistorialOct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @historial_oct }
    end
  end

  # GET /historial_octs/new
  # GET /historial_octs/new.json
  def new
    @historial_oct = HistorialOct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @historial_oct }
    end
  end

  # GET /historial_octs/1/edit
  def edit
    @historial_oct = HistorialOct.find(params[:id])
  end

  # POST /historial_octs
  # POST /historial_octs.json
  def create
    @historial_oct = HistorialOct.new(params[:historial_oct])

    respond_to do |format|
      if @historial_oct.save
        format.html { redirect_to @historial_oct, notice: 'Historial oct was successfully created.' }
        format.json { render json: @historial_oct, status: :created, location: @historial_oct }
      else
        format.html { render action: "new" }
        format.json { render json: @historial_oct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /historial_octs/1
  # PUT /historial_octs/1.json
  def update
    @historial_oct = HistorialOct.find(params[:id])

    respond_to do |format|
      if @historial_oct.update_attributes(params[:historial_oct])
        format.html { redirect_to @historial_oct, notice: 'Historial oct was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @historial_oct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historial_octs/1
  # DELETE /historial_octs/1.json
  def destroy
    @historial_oct = HistorialOct.find(params[:id])
    @historial_oct.destroy

    respond_to do |format|
      format.html { redirect_to historial_octs_url }
      format.json { head :no_content }
    end
  end
end
