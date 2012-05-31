class RentDocumentsController < ApplicationController
  # GET /rent_documents
  # GET /rent_documents.json
  def index
    @rent_documents = RentDocument.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rent_documents }
    end
  end

  # GET /rent_documents/1
  # GET /rent_documents/1.json
  def show
    @rent_document = RentDocument.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rent_document }
    end
  end

  # GET /rent_documents/new
  # GET /rent_documents/new.json
  def new
    @rent_document = RentDocument.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rent_document }
    end
  end

  # GET /rent_documents/1/edit
  def edit
    @rent_document = RentDocument.find(params[:id])
  end

  # POST /rent_documents
  # POST /rent_documents.json
  def create
    @rent_document = RentDocument.new(params[:rent_document])

    respond_to do |format|
      if @rent_document.save
        format.html { redirect_to @rent_document, notice: 'Rent document was successfully created.' }
        format.json { render json: @rent_document, status: :created, location: @rent_document }
      else
        format.html { render action: "new" }
        format.json { render json: @rent_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rent_documents/1
  # PUT /rent_documents/1.json
  def update
    @rent_document = RentDocument.find(params[:id])

    respond_to do |format|
      if @rent_document.update_attributes(params[:rent_document])
        format.html { redirect_to @rent_document, notice: 'Rent document was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rent_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rent_documents/1
  # DELETE /rent_documents/1.json
  def destroy
    @rent_document = RentDocument.find(params[:id])
    @rent_document.destroy

    respond_to do |format|
      format.html { redirect_to rent_documents_url }
      format.json { head :no_content }
    end
  end
end
