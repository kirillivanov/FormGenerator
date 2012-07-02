class TestModelsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @test_models = TestModel.all
    
    respond_to do |format|
      format.html
    end
  end

  def show
    @test_model = TestModel.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @test_model = TestModel.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @test_model = TestModel.find(params[:id])
  end

  def create
    @test_model = TestModel.new(params[:test_model])

    respond_to do |format|
      if @test_model.save
        format.html { redirect_to @test_model, notice: 'Test model was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @test_model = TestModel.find(params[:id])

    respond_to do |format|
      if @test_model.update_attributes(params[:test_model])
        format.html { redirect_to @test_model, notice: 'Test model was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @test_model = TestModel.find(params[:id])
    @test_model.destroy

    respond_to do |format|
      format.html { redirect_to test_models_url }
    end
  end
end
