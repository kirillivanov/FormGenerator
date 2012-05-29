class OptionsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @options = Option.all

    respond_to do |format|
      format.html
    end
  end

  def show
    @option = Option.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @option = Option.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @option = Option.find(params[:id])
  end

  def create
    @option = Option.new(params[:option])

    respond_to do |format|
      if @option.save
        format.html { redirect_to @option, notice: 'Option was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @option = Option.find(params[:id])

    respond_to do |format|
      if @option.update_attributes(params[:option])
        format.html { redirect_to @option, notice: 'Option was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @option = Option.find(params[:id])
    @option.destroy

    respond_to do |format|
      format.html { redirect_to options_url }
    end
  end
end
