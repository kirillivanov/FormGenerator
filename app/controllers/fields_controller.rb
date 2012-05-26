class FieldsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @fields = Field.all
    respond_to do |format|
      format.html
    end
  end

  def show
    @field = Field.find(params[:id])
    respond_to do |format|
      format.html 
    end
  end

  def new
    @field = Field.new
    respond_to do |format|
      format.html
    end
  end

  def edit
    @field = Field.find(params[:id])
  end

  def create
    @field = Field.new(params[:field])
    respond_to do |format|
      if @field.save
        format.html { redirect_to @field, notice: 'Field was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @field = Field.find(params[:id])
    respond_to do |format|
      if @field.update_attributes(params[:field])
        format.html { redirect_to @field, notice: 'Field was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @field = Field.find(params[:id])
    @field.destroy
    respond_to do |format|
      format.html { redirect_to fields_url }
    end
  end
end
