class DelegateAssignmentsController < ApplicationController
  # GET /delegate_assignments
  # GET /delegate_assignments.json
  def index
    @delegate_assignments = DelegateAssignment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @delegate_assignments }
    end
  end

  # GET /delegate_assignments/1
  # GET /delegate_assignments/1.json
  def show
    @delegate_assignment = DelegateAssignment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @delegate_assignment }
    end
  end

  # GET /delegate_assignments/new
  # GET /delegate_assignments/new.json
  def new
    @delegate_assignment = DelegateAssignment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @delegate_assignment }
    end
  end

  # GET /delegate_assignments/1/edit
  def edit
    @delegate_assignment = DelegateAssignment.find(params[:id])
  end

  # POST /delegate_assignments
  # POST /delegate_assignments.json
  def create
    @delegate_assignment = DelegateAssignment.new(params[:delegate_assignment])

    respond_to do |format|
      if @delegate_assignment.save
        format.html { redirect_to @delegate_assignment, notice: 'Delegate assignment was successfully created.' }
        format.json { render json: @delegate_assignment, status: :created, location: @delegate_assignment }
      else
        format.html { render action: "new" }
        format.json { render json: @delegate_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /delegate_assignments/1
  # PUT /delegate_assignments/1.json
  def update
    @delegate_assignment = DelegateAssignment.find(params[:id])

    respond_to do |format|
      if @delegate_assignment.update_attributes(params[:delegate_assignment])
        format.html { redirect_to @delegate_assignment, notice: 'Delegate assignment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @delegate_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delegate_assignments/1
  # DELETE /delegate_assignments/1.json
  def destroy
    @delegate_assignment = DelegateAssignment.find(params[:id])
    @delegate_assignment.destroy

    respond_to do |format|
      format.html { redirect_to delegate_assignments_url }
      format.json { head :no_content }
    end
  end
end
