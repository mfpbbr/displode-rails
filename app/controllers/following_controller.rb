class FollowingController < ApplicationController
  # GET /following
  # GET /following.json
  def index
    @following = Following.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @following }
    end
  end

  # GET /following/1
  # GET /following/1.json
  def show
    @followee = Following.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @followee }
    end
  end

  # GET /following/new
  # GET /following/new.json
  def new
    @followee = Following.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @followee }
    end
  end

  # GET /following/1/edit
  def edit
    @followee = Following.find(params[:id])
  end

  # POST /following
  # POST /following.json
  def create
    @followee = Following.new(params[:followee])

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

  # PUT /following/1
  # PUT /following/1.json
  def update
    @followee = Following.find(params[:id])

    respond_to do |format|
      if @followee.update_attributes(params[:followee])
        format.html { redirect_to @followee, notice: 'Following was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @followee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /following/1
  # DELETE /following/1.json
  def destroy
    @followee = Following.find(params[:id])
    @followee.destroy

    respond_to do |format|
      format.html { redirect_to following_url }
      format.json { head :no_content }
    end
  end
end
