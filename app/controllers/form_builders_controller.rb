class FormBuildersController < ApplicationController

   before_filter :authenticate_user!

  def index
    @form_builders = FormBuilder.all

    respond_to do |format|
      format.html
    end
  end

  def show
    @form_builder = FormBuilder.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @form_builder = FormBuilder.new
    respond_to do |format|
      format.html
    end
  end

  def edit
    @form_builder = FormBuilder.find(params[:id])
  end

  def create
    @form_builder = FormBuilder.new(params[:form_builder])

    respond_to do |format|
      if @form_builder.save
        format.html { redirect_to @form_builder, notice: 'Form builder was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @form_builder = FormBuilder.find(params[:id])
    respond_to do |format|
      if @form_builder.update_attributes(params[:form_builder])
        format.html { redirect_to @form_builder, notice: 'Form builder was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end


  def destroy
    @form_builder = FormBuilder.find(params[:id])
    @form_builder.destroy

    respond_to do |format|
      format.html { redirect_to form_builders_url }
    end
  end
end