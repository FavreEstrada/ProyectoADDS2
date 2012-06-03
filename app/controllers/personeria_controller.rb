class PersoneriaController < ApplicationController
  # GET /personeria
  # GET /personeria.json
 before_filter :authenticate_user!, :except => [:index]
  def index
    @personeria = Personerium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personeria }
    end
  end

  # GET /personeria/1
  # GET /personeria/1.json
  def show
    @personerium = Personerium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @personerium }
    end
  end

  # GET /personeria/new
  # GET /personeria/new.json
  def new
    @personerium = Personerium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @personerium }
    end
  end

  # GET /personeria/1/edit
  def edit
    @personerium = Personerium.find(params[:id])
  end

  # POST /personeria
  # POST /personeria.json
  def create
    @personerium = Personerium.new(params[:personerium])

    respond_to do |format|
      if @personerium.save
        format.html { redirect_to @personerium, notice: 'Personerium was successfully created.' }
        format.json { render json: @personerium, status: :created, location: @personerium }
      else
        format.html { render action: "new" }
        format.json { render json: @personerium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /personeria/1
  # PUT /personeria/1.json
  def update
    @personerium = Personerium.find(params[:id])

    respond_to do |format|
      if @personerium.update_attributes(params[:personerium])
        format.html { redirect_to @personerium, notice: 'Personerium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @personerium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personeria/1
  # DELETE /personeria/1.json
  def destroy
    @personerium = Personerium.find(params[:id])
    @personerium.destroy

    respond_to do |format|
      format.html { redirect_to personeria_url }
      format.json { head :no_content }
    end
  end
end
