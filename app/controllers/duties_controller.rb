class DutiesController < ApplicationController
  # GET /duties
  # GET /duties.json
  def index
    @duties = Duty.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @duties }
    end
  end

  # GET /duties/1
  # GET /duties/1.json
  def show
    @duty = Duty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @duty }
    end
  end

  # GET /duties/new
  # GET /duties/new.json
  def new
    @duty = Duty.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @duty }
    end
  end

  # GET /duties/1/edit
  def edit
    @duty = Duty.find(params[:id])
  end

  # POST /duties
  # POST /duties.json
  def create
    @duty = Duty.new(params[:duty])

    respond_to do |format|
      if @duty.save
        format.html { redirect_to @duty, notice: 'Duty was successfully created.' }
        format.json { render json: @duty, status: :created, location: @duty }
      else
        format.html { render action: "new" }
        format.json { render json: @duty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /duties/1
  # PUT /duties/1.json
  def update
    @duty = Duty.find(params[:id])

    respond_to do |format|
      if @duty.update_attributes(params[:duty])
        format.html { redirect_to @duty, notice: 'Duty was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @duty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duties/1
  # DELETE /duties/1.json
  def destroy
    @duty = Duty.find(params[:id])
    @duty.destroy

    respond_to do |format|
      format.html { redirect_to duties_url }
      format.json { head :no_content }
    end
  end
end
