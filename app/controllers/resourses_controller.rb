class ResoursesController < ApplicationController

  before_filter :authenticate_user!

  def index
    @resourses = Resourse.all
    respond_to do |format|
      format.html
    end
  end

  def show
    @resourse = Resourse.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

  def new
    @resourse = Resourse.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @resourse = Resourse.find(params[:id])
  end

  def create
    @resourse = Resourse.new(params[:resourse])

    respond_to do |format|
      if @resourse.save
        format.html { redirect_to @resourse, notice: 'Resourse was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @resourse = Resourse.find(params[:id])
    respond_to do |format|
      if @resourse.update_attributes(params[:resourse])
        format.html { redirect_to @resourse, notice: 'Resourse was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @resourse = Resourse.find(params[:id])
    @resourse.destroy

    respond_to do |format|
      format.html { redirect_to resourses_url }
    end
  end
end
