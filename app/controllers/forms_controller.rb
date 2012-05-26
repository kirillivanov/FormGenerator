class FormsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @forms = Form.all
    respond_to do |format|
      format.html
    end
  end

  def show
    @form = Form.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

  def new
    @form = Form.new
    respond_to do |format|
      format.html
    end
  end

  def edit
    @form = Form.find(params[:id])
  end

  def create
    @form = Form.new(params[:form])
    respond_to do |format|
      if @form.save
        format.html { redirect_to @form, notice: 'Form was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @form = Form.find(params[:id])
    respond_to do |format|
      if @form.update_attributes(params[:form])
        format.html { redirect_to @form, notice: 'Form was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @form = Form.find(params[:id])
    @form.destroy

    respond_to do |format|
      format.html { redirect_to forms_url }
    end
  end
end
