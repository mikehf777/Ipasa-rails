class PropertiesController < ApplicationController


  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @properties }
      format.js
    end
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
    @property = Property.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @property }
      format.js
    end
  end

  # GET /properties/new
  # GET /properties/new.json
  def new
    @property = Property.new
    6.times { @property.pictures.build }

    @localities = Locality.all
    respond_to do |format|
      format.html  # new.html.erb
      format.json { render json: @property }
      format.js
    end
  end

  # GET /properties/1/edit
  def edit
    @property = Property.find(params[:id])
    6.times { @property.pictures.build }
    respond_to do |format|
      format.html
      format.js
    end
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(params[:property])

    respond_to do |format|
      if @property.save
        format.html { redirect_to action:"tab", notice: 'Property was successfully created.' }
        format.json { render json: @property, status: :created, location: @property }
      else
        format.html { render action: "new" }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /properties/1
  # PUT /properties/1.json
  def update
    @property = Property.find(params[:id])
    respond_to do |format|
      if @property.update_attributes(params[:property])
        format.html { redirect_to action: "tab" }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property = Property.find(params[:id])
    @property.destroy

    respond_to do |format|
      format.html { redirect_to properties_url }
      format.json { head :no_content }
    end
  end
  def tab
    @properties = Property.all
     respond_to do |format|
      format.html
    end
  end



end
