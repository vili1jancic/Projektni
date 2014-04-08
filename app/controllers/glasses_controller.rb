class GlassesController < ApplicationController

  before_filter :authenticate_user!

  # GET /glasses
  # GET /glasses.json
  def index
    @glasses = Glass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @glasses }
    end
  end

  # GET /glasses/1
  # GET /glasses/1.json
  def show
    @glass = Glass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @glass }
    end
  end

  # GET /glasses/new
  # GET /glasses/new.json
  def new
    @glass = Glass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @glass }
    end
  end

  # GET /glasses/1/edit
  def edit
    @glass = Glass.find(params[:id])
  end

  # POST /glasses
  # POST /glasses.json
  def create
    @glass = Glass.new(params[:glass])

    respond_to do |format|
      if @glass.save
        format.html { redirect_to @glass, notice: 'Glass was successfully created.' }
        format.json { render json: @glass, status: :created, location: @glass }
      else
        format.html { render action: "new" }
        format.json { render json: @glass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /glasses/1
  # PUT /glasses/1.json
  def update
    @glass = Glass.find(params[:id])

    respond_to do |format|
      if @glass.update_attributes(params[:glass])
        format.html { redirect_to @glass, notice: 'Glass was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @glass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glasses/1
  # DELETE /glasses/1.json
  def destroy
    @glass = Glass.find(params[:id])
    @glass.destroy

    respond_to do |format|
      format.html { redirect_to glasses_url }
      format.json { head :no_content }
    end
  end
end
