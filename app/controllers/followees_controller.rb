class FolloweesController < ApplicationController
  # GET /followees
  # GET /followees.json
  def index
    @followees = Followee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @followees }
    end
  end

  # GET /followees/1
  # GET /followees/1.json
  def show
    @followee = Followee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @followee }
    end
  end

  # GET /followees/new
  # GET /followees/new.json
  def new
    @followee = Followee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @followee }
    end
  end

  # GET /followees/1/edit
  def edit
    @followee = Followee.find(params[:id])
  end

  # POST /followees
  # POST /followees.json
  def create
    @followee = Followee.new(params[:followee])

    respond_to do |format|
      if @followee.save
        format.html { redirect_to @followee, notice: 'Followee was successfully created.' }
        format.json { render json: @followee, status: :created, location: @followee }
      else
        format.html { render action: "new" }
        format.json { render json: @followee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /followees/1
  # PUT /followees/1.json
  def update
    @followee = Followee.find(params[:id])

    respond_to do |format|
      if @followee.update_attributes(params[:followee])
        format.html { redirect_to @followee, notice: 'Followee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @followee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /followees/1
  # DELETE /followees/1.json
  def destroy
    @followee = Followee.find(params[:id])
    @followee.destroy

    respond_to do |format|
      format.html { redirect_to followees_url }
      format.json { head :no_content }
    end
  end
end
