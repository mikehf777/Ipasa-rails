class StructuresController < ApplicationController
  # GET /structures
  # GET /structures.json
  def index
    @structures = Structure.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @structures }
    end
  end

  # GET /structures/1
  # GET /structures/1.json
  def show
    @structure = Structure.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @structure }
    end
  end

  # GET /structures/new
  # GET /structures/new.json
  def new
    @structure = Structure.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @structure }
    end
  end

  # GET /structures/1/edit
  def edit
    @structure = Structure.find(params[:id])
  end

  # POST /structures
  # POST /structures.json
  def create
    @structure = Structure.new(params[:structure])

    respond_to do |format|
      if @structure.save
        format.html { redirect_to @structure, notice: 'Structure was successfully created.' }
        format.json { render json: @structure, status: :created, location: @structure }
      else
        format.html { render action: "new" }
        format.json { render json: @structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /structures/1
  # PUT /structures/1.json
  def update
    @structure = Structure.find(params[:id])

    respond_to do |format|
      if @structure.update_attributes(params[:structure])
        format.html { redirect_to @structure, notice: 'Structure was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /structures/1
  # DELETE /structures/1.json
  def destroy
    @structure = Structure.find(params[:id])
    @structure.destroy

    respond_to do |format|
      format.html { redirect_to structures_url }
      format.json { head :no_content }
    end
  end
end
