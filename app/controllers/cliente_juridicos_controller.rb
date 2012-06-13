class ClienteJuridicosController < ApplicationController
  # GET /cliente_juridicos
  # GET /cliente_juridicos.json
  def index
    @cliente_juridicos = ClienteJuridico.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cliente_juridicos }
    end
  end

  # GET /cliente_juridicos/1
  # GET /cliente_juridicos/1.json
  def show
    @cliente_juridico = ClienteJuridico.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cliente_juridico }
    end
  end

  # GET /cliente_juridicos/new
  # GET /cliente_juridicos/new.json
  def new
    @cliente_juridico = ClienteJuridico.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cliente_juridico }
    end
  end

  # GET /cliente_juridicos/1/edit
  def edit
    @cliente_juridico = ClienteJuridico.find(params[:id])
  end

  # POST /cliente_juridicos
  # POST /cliente_juridicos.json
  def create
    @cliente_juridico = ClienteJuridico.new(params[:cliente_juridico])

    respond_to do |format|
      if @cliente_juridico.save
        format.html { redirect_to @cliente_juridico, notice: 'Cliente juridico was successfully created.' }
        format.json { render json: @cliente_juridico, status: :created, location: @cliente_juridico }
      else
        format.html { render action: "new" }
        format.json { render json: @cliente_juridico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cliente_juridicos/1
  # PUT /cliente_juridicos/1.json
  def update
    @cliente_juridico = ClienteJuridico.find(params[:id])

    respond_to do |format|
      if @cliente_juridico.update_attributes(params[:cliente_juridico])
        format.html { redirect_to @cliente_juridico, notice: 'Cliente juridico was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cliente_juridico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cliente_juridicos/1
  # DELETE /cliente_juridicos/1.json
  def destroy
    @cliente_juridico = ClienteJuridico.find(params[:id])
    @cliente_juridico.destroy

    respond_to do |format|
      format.html { redirect_to cliente_juridicos_url }
      format.json { head :no_content }
    end
  end
end
