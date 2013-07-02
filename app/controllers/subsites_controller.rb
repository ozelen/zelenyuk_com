class SubsitesController < ApplicationController
  # GET /subsites
  # GET /subsites.json
  def index
    @subsites = Subsite.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subsites }
    end
  end

  # GET /subsites/1
  # GET /subsites/1.json
  def show
    @subsite = Subsite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subsite }
    end
  end

  # GET /subsites/new
  # GET /subsites/new.json
  def new
    @subsite = Subsite.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subsite }
    end
  end

  # GET /subsites/1/edit
  def edit
    @subsite = Subsite.find(params[:id])
  end

  # POST /subsites
  # POST /subsites.json
  def create
    @subsite = Subsite.new(params[:subsite])

    respond_to do |format|
      if @subsite.save
        format.html { redirect_to @subsite, notice: 'Subsite was successfully created.' }
        format.json { render json: @subsite, status: :created, location: @subsite }
      else
        format.html { render action: "new" }
        format.json { render json: @subsite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subsites/1
  # PUT /subsites/1.json
  def update
    @subsite = Subsite.find(params[:id])

    respond_to do |format|
      if @subsite.update_attributes(params[:subsite])
        format.html { redirect_to @subsite, notice: 'Subsite was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @subsite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subsites/1
  # DELETE /subsites/1.json
  def destroy
    @subsite = Subsite.find(params[:id])
    @subsite.destroy

    respond_to do |format|
      format.html { redirect_to subsites_url }
      format.json { head :no_content }
    end
  end
end
