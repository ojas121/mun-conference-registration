class CommitteeSchoolsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  # GET /committee_schools
  # GET /committee_schools.json
  def index
    @committee_schools = CommitteeSchool.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @committee_schools }
	  
	   
       	@search = Committee.search(params[:search])
          @committees = @search.all   # load all matching records
      
	  
    end
  end

  # GET /committee_schools/1
  # GET /committee_schools/1.json
  def show
  #  @committee_school = CommitteeSchool.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @committee_school }
    end
  end

  # GET /committee_schools/new
  # GET /committee_schools/new.json
  def new
  #  @committee_school = CommitteeSchool.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @committee_school }
    end
  end

  # GET /committee_schools/1/edit
  def edit
  #  @committee_school = CommitteeSchool.find(params[:id])
  end

  # POST /committee_schools
  # POST /committee_schools.json
  def create
  #  @committee_school = CommitteeSchool.new(params[:committee_school])

    respond_to do |format|
      if @committee_school.save
        format.html { redirect_to @committee_school, notice: 'Committee school was successfully created.' }
        format.json { render json: @committee_school, status: :created, location: @committee_school }
      else
        format.html { render action: "new" }
        format.json { render json: @committee_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /committee_schools/1
  # PUT /committee_schools/1.json
  def update
  #  @committee_school = CommitteeSchool.find(params[:id])

    respond_to do |format|
      if @committee_school.update_attributes(params[:committee_school])
        format.html { redirect_to @committee_school, notice: 'Committee school was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @committee_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /committee_schools/1
  # DELETE /committee_schools/1.json
  def destroy
  #  @committee_school = CommitteeSchool.find(params[:id])
    @committee_school.destroy

    respond_to do |format|
      format.html { redirect_to committee_schools_url }
      format.json { head :no_content }
    end
  end
end
