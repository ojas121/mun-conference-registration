class CountryListsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  # GET /country_lists
  # GET /country_lists.json
  def index
    @country_lists = CountryList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @country_lists }
    end
  end

  # GET /country_lists/1
  # GET /country_lists/1.json
  def show
  #  @country_list = CountryList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @country_list }
    end
  end

  # GET /country_lists/new
  # GET /country_lists/new.json
  def new
  #  @country_list = CountryList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @country_list }
    end
  end

  # GET /country_lists/1/edit
  def edit
  #  @country_list = CountryList.find(params[:id])
  end

  # POST /country_lists
  # POST /country_lists.json
  def create
  #  @country_list = CountryList.new(params[:country_list])

    respond_to do |format|
      if @country_list.save
        format.html { redirect_to @country_list, notice: 'Country list was successfully created.' }
        format.json { render json: @country_list, status: :created, location: @country_list }
      else
        format.html { render action: "new" }
        format.json { render json: @country_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /country_lists/1
  # PUT /country_lists/1.json
  def update
  #  @country_list = CountryList.find(params[:id])

    respond_to do |format|
      if @country_list.update_attributes(params[:country_list])
        format.html { redirect_to @country_list, notice: 'Country list was successfully updated.' }
        format.json { head :no_content }
        UserMailer.update_country_list_msg(@country_list).deliver

      else
        format.html { render action: "edit" }
        format.json { render json: @country_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /country_lists/1
  # DELETE /country_lists/1.json
  def destroy
  #  @country_list = CountryList.find(params[:id])
    @country_list.destroy

    respond_to do |format|
      format.html { redirect_to country_lists_url }
      format.json { head :no_content }
    end
  end
end
