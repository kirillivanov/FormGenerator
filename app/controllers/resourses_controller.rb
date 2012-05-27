class ResoursesController < ApplicationController
  # GET /resourses
  # GET /resourses.json
  def index
    @resourses = Resourse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @resourses }
    end
  end

  # GET /resourses/1
  # GET /resourses/1.json
  def show
    @resourse = Resourse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @resourse }
    end
  end

  # GET /resourses/new
  # GET /resourses/new.json
  def new
    @resourse = Resourse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @resourse }
    end
  end

  # GET /resourses/1/edit
  def edit
    @resourse = Resourse.find(params[:id])
  end

  # POST /resourses
  # POST /resourses.json
  def create
    @resourse = Resourse.new(params[:resourse])

    respond_to do |format|
      if @resourse.save
        format.html { redirect_to @resourse, notice: 'Resourse was successfully created.' }
        format.json { render json: @resourse, status: :created, location: @resourse }
      else
        format.html { render action: "new" }
        format.json { render json: @resourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /resourses/1
  # PUT /resourses/1.json
  def update
    @resourse = Resourse.find(params[:id])

    respond_to do |format|
      if @resourse.update_attributes(params[:resourse])
        format.html { redirect_to @resourse, notice: 'Resourse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @resourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resourses/1
  # DELETE /resourses/1.json
  def destroy
    @resourse = Resourse.find(params[:id])
    @resourse.destroy

    respond_to do |format|
      format.html { redirect_to resourses_url }
      format.json { head :no_content }
    end
  end
end
