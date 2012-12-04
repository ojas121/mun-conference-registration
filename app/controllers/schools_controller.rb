class SchoolsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  # GET /schools
  # GET /schools.json
  def index
    
    if current_user.role? :"System Admin"
      @schools = School.all
    else
      @schools = School.where("user_id == ?", current_user.id)
    end

    respond_to do |format|
      format.html # index.html.erb
       format.xml { render :xml => @schools }
        format.xls { send_data @schools.to_xls, :filename => 'schools.xls' }
      format.json { render json: @schools }
	  
	   
      	@search = School.search(params[:search])
        @schools = @search.all   # load all matching records
        
    if current_user.role? :"System Admin"
        @schools = @search.all
      else
        @schools = @search.where("user_id == ?", current_user.id)
      end
     	  
    end
  end

  # GET /schools/1
  # GET /schools/1.json
  def show
  #  @school = School.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @school }
    end
  end

  # GET /schools/new
  # GET /schools/new.json
  def new
  #  @school = School.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @school }
    end
  end

  # GET /schools/1/edit
  def edit
  #  @school = School.find(params[:id])
  end

  # POST /schools
  # POST /schools.json
  # def create
  # #  @school = School.new(params[:school])

  #   respond_to do |format|
  #     if @school.save
  #       format.html { redirect_to @school, notice: 'School was successfully created.' }
  #       format.json { render json: @school, status: :created, location: @school }
        
  #       # Provide a email confirmation if all is good...
		#     UserMailer.new_school_msg(@school).deliver
        
  #     else
  #       format.html { render action: "new" }
  #       format.json { render json: @school.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PUT /schools/1
  # PUT /schools/1.json
  def update
  #  @school = School.find(params[:id])

    respond_to do |format|
      if @school.update_attributes(params[:school])
        format.html { redirect_to @school, notice: 'School was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @school.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schools/1
  # DELETE /schools/1.json
  # def destroy
  # #  @school = School.find(params[:id])
  #   @school.destroy

  #   respond_to do |format|
  #     format.html { redirect_to schools_url }
  #     format.json { head :no_content }
  #   end
  # end

  def create
    @conference = Conference.find(params[:conference_id])
    @school = @conference.schools.create(params[:school])
    redirect_to conference_path(@conference)
    UserMailer.new_school_msg(@school).deliver
  end

  def destroy
    @conference = Conference.find(params[:conference_id])
    @school = @conference.schools.find(params[:id])
    @school.destroy
    redirect_to conference_path(@conference)
  end
end