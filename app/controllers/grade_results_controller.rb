class GradeResultsController < ApplicationController
  before_action :set_grade_result, only: [:show, :edit, :update, :destroy]

  # GET /grade_results
  # GET /grade_results.json
  def index
    @grade_results = GradeResult.all
  end

  # GET /grade_results/1
  # GET /grade_results/1.json
  def show
  end

  # GET /grade_results/new
  def new
    @grade_result = GradeResult.new
  end

  # GET /grade_results/1/edit
  def edit
  end

  # POST /grade_results
  # POST /grade_results.json
  def create
    @grade_result = GradeResult.new(grade_result_params)

    respond_to do |format|
      if @grade_result.save
        format.html { redirect_to @grade_result, notice: 'Grade result was successfully created.' }
        format.json { render :show, status: :created, location: @grade_result }
      else
        format.html { render :new }
        format.json { render json: @grade_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grade_results/1
  # PATCH/PUT /grade_results/1.json
  def update
    respond_to do |format|
      if @grade_result.update(grade_result_params)
        format.html { redirect_to @grade_result, notice: 'Grade result was successfully updated.' }
        format.json { render :show, status: :ok, location: @grade_result }
      else
        format.html { render :edit }
        format.json { render json: @grade_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grade_results/1
  # DELETE /grade_results/1.json
  def destroy
    @grade_result.destroy
    respond_to do |format|
      format.html { redirect_to grade_results_url, notice: 'Grade result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade_result
      @grade_result = GradeResult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grade_result_params
      params.require(:grade_result).permit(:name, :stundent_id, :score)
    end
end
