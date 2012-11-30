class DelegatesController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  # GET /delegates
  # GET /delegates.json
  def index
    @delegates = Delegate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @delegates }
	  
	   	@search = Delegate.search(params[:search])
        @delegates = @search.all   # load all matching records
      
	  
    end
  end

  # GET /delegates/1
  # GET /delegates/1.json
  def show
  #  @delegate = Delegate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @delegate }
    end
  end

  # GET /delegates/new
  # GET /delegates/new.json
  def new
  #  @delegate = Delegate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @delegate }
    end
  end

  # GET /delegates/1/edit
  def edit
  #  @delegate = Delegate.find(params[:id])
  end

  # POST /delegates
  # POST /delegates.json
  # def create
  # #  @delegate = Delegate.new(params[:delegate])

  #   respond_to do |format|
  #     if @delegate.save
  #       format.html { redirect_to @delegate, notice: 'Delegate was successfully created.' }
  #       format.json { render json: @delegate, status: :created, location: @delegate }
  #     else
  #       format.html { render action: "new" }
  #       format.json { render json: @delegate.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PUT /delegates/1
  # PUT /delegates/1.json
  def update
  #  @delegate = Delegate.find(params[:id])

    respond_to do |format|
      if @delegate.update_attributes(params[:delegate])
        format.html { redirect_to @delegate, notice: 'Delegate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @delegate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delegates/1
  # DELETE /delegates/1.json
  # def destroy
  # #  @delegate = Delegate.find(params[:id])
  #   @delegate.destroy

  #   respond_to do |format|
  #     format.html { redirect_to delegates_url }
  #     format.json { head :no_content }
  #   end
  # end

  def create
  @school = School.find(params[:school_id])
  @delegate = @school.delegates.create(params[:delegate])
  redirect_to school_path(@school)
end

def destroy
  @school = School.find(params[:school_id])
  @delegate = @school.delegates.find(params[:id])
  @delegate.destroy
  redirect_to school_path(@school)
end
end
