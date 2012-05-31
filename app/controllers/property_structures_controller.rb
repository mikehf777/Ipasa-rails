class PropertyStructuresController < ApplicationController
  # GET /property_structures
  # GET /property_structures.json
  def index
    @property_structures = PropertyStructure.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @property_structures }
    end
  end

  # GET /property_structures/1
  # GET /property_structures/1.json
  def show
    @property_structure = PropertyStructure.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @property_structure }
    end
  end

  # GET /property_structures/new
  # GET /property_structures/new.json
  def new
    @property_structure = PropertyStructure.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @property_structure }
    end
  end

  # GET /property_structures/1/edit
  def edit
    @property_structure = PropertyStructure.find(params[:id])
  end

  # POST /property_structures
  # POST /property_structures.json
  def create
    @property_structure = PropertyStructure.new(params[:property_structure])

    respond_to do |format|
      if @property_structure.save
        format.html { redirect_to @property_structure, notice: 'Property structure was successfully created.' }
        format.json { render json: @property_structure, status: :created, location: @property_structure }
      else
        format.html { render action: "new" }
        format.json { render json: @property_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /property_structures/1
  # PUT /property_structures/1.json
  def update
    @property_structure = PropertyStructure.find(params[:id])

    respond_to do |format|
      if @property_structure.update_attributes(params[:property_structure])
        format.html { redirect_to @property_structure, notice: 'Property structure was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @property_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_structures/1
  # DELETE /property_structures/1.json
  def destroy
    @property_structure = PropertyStructure.find(params[:id])
    @property_structure.destroy

    respond_to do |format|
      format.html { redirect_to property_structures_url }
      format.json { head :no_content }
    end
  end
end
