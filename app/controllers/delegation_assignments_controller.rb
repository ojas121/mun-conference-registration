class DelegationAssignmentsController < ApplicationController
  # GET /delegation_assignments
  # GET /delegation_assignments.json
  def index
    @delegation_assignments = DelegationAssignment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @delegation_assignments }
    end
  end

  # GET /delegation_assignments/1
  # GET /delegation_assignments/1.json
  def show
    @delegation_assignment = DelegationAssignment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @delegation_assignment }
    end
  end

  # GET /delegation_assignments/new
  # GET /delegation_assignments/new.json
  def new
    @delegation_assignment = DelegationAssignment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @delegation_assignment }
    end
  end

  # GET /delegation_assignments/1/edit
  def edit
    @delegation_assignment = DelegationAssignment.find(params[:id])
  end

  # POST /delegation_assignments
  # POST /delegation_assignments.json
  def create
    @delegation_assignment = DelegationAssignment.new(params[:delegation_assignment])

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
    @delegation_assignment = DelegationAssignment.find(params[:id])

    respond_to do |format|
      if @delegation_assignment.update_attributes(params[:delegation_assignment])
        format.html { redirect_to @delegation_assignment, notice: 'Delegation assignment was successfully updated.' }
        format.json { head :no_content }
        UserMailer.new_delegation_assignment_msg(@delegation_assignment).deliver
      else
        format.html { render action: "edit" }
        format.json { render json: @delegation_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delegation_assignments/1
  # DELETE /delegation_assignments/1.json
  def destroy
    @delegation_assignment = DelegationAssignment.find(params[:id])
    @delegation_assignment.destroy

    respond_to do |format|
      format.html { redirect_to delegation_assignments_url }
      format.json { head :no_content }
    end
  end
  
  # def create
  #   @conference = Conference.find(params[:conference_id])
  #   @delegation_assignment = @conference.delegation_assignments.create(params[:delegation_assignment])
  #   redirect_to conference_path(@conference)
  # end

  # def destroy
  #   @conference = Conference.find(params[:conference_id])
  #   @delegation_assignment = @conference.delegation_assignments.find(params[:id])
  #   @delegation_assignment.destroy
  #   redirect_to conference_path(@conference)
  # end
end