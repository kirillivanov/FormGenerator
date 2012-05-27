class FormBuildersController < ApplicationController
  # GET /form_builders
  # GET /form_builders.json
  def index
    @form_builders = FormBuilder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @form_builders }
    end
  end

  # GET /form_builders/1
  # GET /form_builders/1.json
  def show
    @form_builder = FormBuilder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @form_builder }
    end
  end

  # GET /form_builders/new
  # GET /form_builders/new.json
  def new
    @form_builder = FormBuilder.new
    #@form_builder.build_form
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @form_builder }
    end
  end

  # GET /form_builders/1/edit
  def edit
    @form_builder = FormBuilder.find(params[:id])
  end

  # POST /form_builders
  # POST /form_builders.json
  def create
    @form_builder = FormBuilder.new(params[:form_builder])

    respond_to do |format|
      if @form_builder.save
        format.html { redirect_to @form_builder, notice: 'Form builder was successfully created.' }
        format.json { render json: @form_builder, status: :created, location: @form_builder }
      else
        format.html { render action: "new" }
        format.json { render json: @form_builder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /form_builders/1
  # PUT /form_builders/1.json
  def update
    @form_builder = FormBuilder.find(params[:id])

    respond_to do |format|
      if @form_builder.update_attributes(params[:form_builder])
        format.html { redirect_to @form_builder, notice: 'Form builder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @form_builder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form_builders/1
  # DELETE /form_builders/1.json
  def destroy
    @form_builder = FormBuilder.find(params[:id])
    @form_builder.destroy

    respond_to do |format|
      format.html { redirect_to form_builders_url }
      format.json { head :no_content }
    end
  end
end
