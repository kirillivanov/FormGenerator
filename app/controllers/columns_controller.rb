class ColumnsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @columns = Column.all
    respond_to do |format|
      format.html 
    end
  end

  def show
    @column = Column.find(params[:id])
    respond_to do |format|
      format.html 
    end
  end

  def new
    @column = Column.new
    respond_to do |format|
      format.html 
    end
  end

  def edit
    @column = Column.find(params[:id])
  end

  def create
    @column = Column.new(params[:column])
    respond_to do |format|
      if @column.save
        format.html { redirect_to @column, notice: 'Column was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @column = Column.find(params[:id])
    respond_to do |format|
      if @column.update_attributes(params[:column])
        format.html { redirect_to @column, notice: 'Column was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @column = Column.find(params[:id])
    @column.destroy
    respond_to do |format|
      format.html { redirect_to columns_url }
    end
  end
end
