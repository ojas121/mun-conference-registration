class DelegationAssignmentsController < ApplicationController
  # GET /delegation_assignments
  # GET /delegation_assignments.json
  before_filter :authenticate_user!
  load_and_authorize_resource

  def index
    @delegation_assignments = DelegationAssignment.order("list_id DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @delegation_assignments }
    end
  end

  # GET /delegation_assignments/1
  # GET /delegation_assignments/1.json
  def show

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @delegation_assignment }
    end
  end

  # GET /delegation_assignments/new
  # GET /delegation_assignments/new.json
  def new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @delegation_assignment }
    end
  end

  # GET /delegation_assignments/1/edit
  def edit
  end

  # POST /delegation_assignments
  # POST /delegation_assignments.json
  def create

    respond_to do |format|
      if @delegation_assignment.save
        format.html { redirect_to @delegation_assignment, notice: 'Delegation assignment was successfully created.' }
        format.json { render json: @delegation_assignment, status: :created, location: @delegation_assignment }
      
      else
        format.html { render action: "new" }
        format.json { render json: @delegation_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /delegation_assignments/1
  # PUT /delegation_assignments/1.json
  def update
       
    respond_to do |format|
      if @delegation_assignment.update_attributes(params[:delegation_assignment])
        format.html { redirect_to delegation_assignments_path, notice: 'Delegation assignment was successfully updated.' }
        format.json { head :no_content }
        UserMailer.update_delegation_assignment_msg(@delegation_assignment).deliver
        

      else
        format.html { render action: "edit" }
        format.json { render json: @delegation_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delegation_assignments/1
  # DELETE /delegation_assignments/1.json
  def destroy
    @delegation_assignment.destroy

    respond_to do |format|
      format.html { redirect_to delegation_assignments_url }
      format.json { head :no_content }
    end
  end

end