class PropertyUsersController < ApplicationController
  # GET /property_users
  # GET /property_users.json
  def index
    @property_users = PropertyUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @property_users }
    end
  end

  # GET /property_users/1
  # GET /property_users/1.json
  def show
    @property_user = PropertyUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @property_user }
    end
  end

  # GET /property_users/new
  # GET /property_users/new.json
  def new
    @property_user = PropertyUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @property_user }
    end
  end

  # GET /property_users/1/edit
  def edit
    @property_user = PropertyUser.find(params[:id])
  end

  # POST /property_users
  # POST /property_users.json
  def create
    @property_user = PropertyUser.new(params[:property_user])

    respond_to do |format|
      if @property_user.save
        format.html { redirect_to @property_user, notice: 'Property user was successfully created.' }
        format.json { render json: @property_user, status: :created, location: @property_user }
      else
        format.html { render action: "new" }
        format.json { render json: @property_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /property_users/1
  # PUT /property_users/1.json
  def update
    @property_user = PropertyUser.find(params[:id])

    respond_to do |format|
      if @property_user.update_attributes(params[:property_user])
        format.html { redirect_to @property_user, notice: 'Property user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @property_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_users/1
  # DELETE /property_users/1.json
  def destroy
    @property_user = PropertyUser.find(params[:id])
    @property_user.destroy

    respond_to do |format|
      format.html { redirect_to property_users_url }
      format.json { head :no_content }
    end
  end
end
