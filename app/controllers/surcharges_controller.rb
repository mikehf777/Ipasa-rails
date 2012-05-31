class SurchargesController < ApplicationController
  # GET /surcharges
  # GET /surcharges.json
  def index
    @surcharges = Surcharge.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @surcharges }
    end
  end

  # GET /surcharges/1
  # GET /surcharges/1.json
  def show
    @surcharge = Surcharge.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @surcharge }
    end
  end

  # GET /surcharges/new
  # GET /surcharges/new.json
  def new
    @surcharge = Surcharge.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @surcharge }
    end
  end

  # GET /surcharges/1/edit
  def edit
    @surcharge = Surcharge.find(params[:id])
  end

  # POST /surcharges
  # POST /surcharges.json
  def create
    @surcharge = Surcharge.new(params[:surcharge])

    respond_to do |format|
      if @surcharge.save
        format.html { redirect_to @surcharge, notice: 'Surcharge was successfully created.' }
        format.json { render json: @surcharge, status: :created, location: @surcharge }
      else
        format.html { render action: "new" }
        format.json { render json: @surcharge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /surcharges/1
  # PUT /surcharges/1.json
  def update
    @surcharge = Surcharge.find(params[:id])

    respond_to do |format|
      if @surcharge.update_attributes(params[:surcharge])
        format.html { redirect_to @surcharge, notice: 'Surcharge was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @surcharge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surcharges/1
  # DELETE /surcharges/1.json
  def destroy
    @surcharge = Surcharge.find(params[:id])
    @surcharge.destroy

    respond_to do |format|
      format.html { redirect_to surcharges_url }
      format.json { head :no_content }
    end
  end
end
