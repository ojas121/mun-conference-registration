class CountrySchoolsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  # GET /country_schools
  # GET /country_schools.json
  def index
    @country_schools = CountrySchool.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @country_schools }
    end
  end

  # GET /country_schools/1
  # GET /country_schools/1.json
  def show
  #  @country_school = CountrySchool.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @country_school }
    end
  end

  # GET /country_schools/new
  # GET /country_schools/new.json
  def new
  #  @country_school = CountrySchool.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @country_school }
    end
  end

  # GET /country_schools/1/edit
  def edit
  #  @country_school = CountrySchool.find(params[:id])
  end

  # POST /country_schools
  # POST /country_schools.json
  def create
  #  @country_school = CountrySchool.new(params[:country_school])

    respond_to do |format|
      if @country_school.save
        format.html { redirect_to @country_school, notice: 'Country school was successfully created.' }
        format.json { render json: @country_school, status: :created, location: @country_school }
      else
        format.html { render action: "new" }
        format.json { render json: @country_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /country_schools/1
  # PUT /country_schools/1.json
  def update
  #  @country_school = CountrySchool.find(params[:id])

    respond_to do |format|
      if @country_school.update_attributes(params[:country_school])
        format.html { redirect_to @country_school, notice: 'Country school was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @country_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /country_schools/1
  # DELETE /country_schools/1.json
  def destroy
  #  @country_school = CountrySchool.find(params[:id])
    @country_school.destroy

    respond_to do |format|
      format.html { redirect_to country_schools_url }
      format.json { head :no_content }
    end
  end
end
