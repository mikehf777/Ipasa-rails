class LocalitiesController < ApplicationController
  # GET /localities
  # GET /localities.json
  def index
    @localities = Locality.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @localities }
    end
  end

  # GET /localities/1
  # GET /localities/1.json
  def show
    @locality = Locality.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @locality }
    end
  end

  # GET /localities/new
  # GET /localities/new.json
  def new
    @locality = Locality.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @locality }
    end
  end

  # GET /localities/1/edit
  def edit
    @locality = Locality.find(params[:id])
  end

  # POST /localities
  # POST /localities.json
  def create
    @locality = Locality.new(params[:locality])

    respond_to do |format|
      if @locality.save
        format.html { redirect_to @locality, notice: 'Locality was successfully created.' }
        format.json { render json: @locality, status: :created, location: @locality }
      else
        format.html { render action: "new" }
        format.json { render json: @locality.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /localities/1
  # PUT /localities/1.json
  def update
    @locality = Locality.find(params[:id])

    respond_to do |format|
      if @locality.update_attributes(params[:locality])
        format.html { redirect_to @locality, notice: 'Locality was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @locality.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /localities/1
  # DELETE /localities/1.json
  def destroy
    @locality = Locality.find(params[:id])
    @locality.destroy

    respond_to do |format|
      format.html { redirect_to localities_url }
      format.json { head :no_content }
    end
  end
end
