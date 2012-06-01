class LeaseUsersController < ApplicationController
  # GET /lease_users
  # GET /lease_users.json
  def index
    @lease_users = LeaseUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lease_users }
    end
  end

  # GET /lease_users/1
  # GET /lease_users/1.json
  def show
    @lease_user = LeaseUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lease_user }
    end
  end

  # GET /lease_users/new
  # GET /lease_users/new.json
  def new
    @lease_user = LeaseUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lease_user }
    end
  end

  # GET /lease_users/1/edit
  def edit
    @lease_user = LeaseUser.find(params[:id])
  end

  # POST /lease_users
  # POST /lease_users.json
  def create
    @lease_user = LeaseUser.new(params[:lease_user])

    respond_to do |format|
      if @lease_user.save
        format.html { redirect_to @lease_user, notice: 'Lease user was successfully created.' }
        format.json { render json: @lease_user, status: :created, location: @lease_user }
      else
        format.html { render action: "new" }
        format.json { render json: @lease_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lease_users/1
  # PUT /lease_users/1.json
  def update
    @lease_user = LeaseUser.find(params[:id])

    respond_to do |format|
      if @lease_user.update_attributes(params[:lease_user])
        format.html { redirect_to @lease_user, notice: 'Lease user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lease_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lease_users/1
  # DELETE /lease_users/1.json
  def destroy
    @lease_user = LeaseUser.find(params[:id])
    @lease_user.destroy

    respond_to do |format|
      format.html { redirect_to lease_users_url }
      format.json { head :no_content }
    end
  end
end
