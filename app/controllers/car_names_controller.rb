class CarNamesController < ApplicationController
  # GET /car_names
  # GET /car_names.json
  def index
    @maker = Maker.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @car_names }
    end
  end

 def search  
#     @maker = Maker.find(params[:makerid])
#     if params[:words].size > 0     
#         @car_name = @maker.car_names.where('name like "%?%"', params[:words])
#     else
#         @car_name = @maker.car_names.per()
#     end
p 'debug ' + params[:makerid] + ' page ' + params[:page]
    @car_names = Maker.find(params[:makerid]).car_names.order(:name)
    @car_names =  @car_names.where("name like '%?%'", params[:words]) if params[:words].present?
    @car_names = @car_names.page(params[:page]).per(10)
end

  # GET /car_names/1
  # GET /car_names/1.json
  def show
    @car_name = CarName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @car_name }
    end
  end

  # GET /car_names/new
  # GET /car_names/new.json
  def new
    @car_name = CarName.new
    @maker = Maker.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @car_name }
    end
  end

  # GET /car_names/1/edit
  def edit  
    @car_name = CarName.find(params[:id])
    @maker = Maker.all

  end

  # POST /car_names
  # POST /car_names.json
  def create
    @car_name = CarName.new(params[:car_name])
    @maker = Maker.all

    respond_to do |format|
      if @car_name.save
        format.html { redirect_to @car_name, notice: 'Car name was successfully created.' }
        format.json { render json: @car_name, status: :created, location: @car_name }
      else
        format.html { render action: "new" }
        format.json { render json: @car_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /car_names/1
  # PUT /car_names/1.json
  def update
    @car_name = CarName.find(params[:id])

    respond_to do |format|
      if @car_name.update_attributes(params[:car_name])
        format.html { redirect_to @car_name, notice: 'Car name was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @car_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_names/1
  # DELETE /car_names/1.json
  def destroy
    @car_name = CarName.find(params[:id])
    @car_name.destroy

    respond_to do |format|
      format.html { redirect_to car_names_url }
      format.json { head :no_content }
    end
  end
end
