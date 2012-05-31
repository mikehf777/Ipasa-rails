class PropertyServicesController < ApplicationController
  # GET /property_services
  # GET /property_services.json
  def index
    @property_services = PropertyService.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @property_services }
    end
  end

  # GET /property_services/1
  # GET /property_services/1.json
  def show
    @property_service = PropertyService.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @property_service }
    end
  end

  # GET /property_services/new
  # GET /property_services/new.json
  def new
    @property_service = PropertyService.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @property_service }
    end
  end

  # GET /property_services/1/edit
  def edit
    @property_service = PropertyService.find(params[:id])
  end

  # POST /property_services
  # POST /property_services.json
  def create
    @property_service = PropertyService.new(params[:property_service])

    respond_to do |format|
      if @property_service.save
        format.html { redirect_to @property_service, notice: 'Property service was successfully created.' }
        format.json { render json: @property_service, status: :created, location: @property_service }
      else
        format.html { render action: "new" }
        format.json { render json: @property_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /property_services/1
  # PUT /property_services/1.json
  def update
    @property_service = PropertyService.find(params[:id])

    respond_to do |format|
      if @property_service.update_attributes(params[:property_service])
        format.html { redirect_to @property_service, notice: 'Property service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @property_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_services/1
  # DELETE /property_services/1.json
  def destroy
    @property_service = PropertyService.find(params[:id])
    @property_service.destroy

    respond_to do |format|
      format.html { redirect_to property_services_url }
      format.json { head :no_content }
    end
  end
end
