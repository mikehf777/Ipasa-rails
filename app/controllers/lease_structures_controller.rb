class LeaseStructuresController < ApplicationController
  # GET /lease_structures
  # GET /lease_structures.json
  def index
    @lease_structures = LeaseStructure.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lease_structures }
    end
  end

  # GET /lease_structures/1
  # GET /lease_structures/1.json
  def show
    @lease_structure = LeaseStructure.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lease_structure }
    end
  end

  # GET /lease_structures/new
  # GET /lease_structures/new.json
  def new
    @lease_structure = LeaseStructure.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lease_structure }
    end
  end

  # GET /lease_structures/1/edit
  def edit
    @lease_structure = LeaseStructure.find(params[:id])
  end

  # POST /lease_structures
  # POST /lease_structures.json
  def create
    @lease_structure = LeaseStructure.new(params[:lease_structure])

    respond_to do |format|
      if @lease_structure.save
        format.html { redirect_to @lease_structure, notice: 'Lease structure was successfully created.' }
        format.json { render json: @lease_structure, status: :created, location: @lease_structure }
      else
        format.html { render action: "new" }
        format.json { render json: @lease_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lease_structures/1
  # PUT /lease_structures/1.json
  def update
    @lease_structure = LeaseStructure.find(params[:id])

    respond_to do |format|
      if @lease_structure.update_attributes(params[:lease_structure])
        format.html { redirect_to @lease_structure, notice: 'Lease structure was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lease_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lease_structures/1
  # DELETE /lease_structures/1.json
  def destroy
    @lease_structure = LeaseStructure.find(params[:id])
    @lease_structure.destroy

    respond_to do |format|
      format.html { redirect_to lease_structures_url }
      format.json { head :no_content }
    end
  end
end
