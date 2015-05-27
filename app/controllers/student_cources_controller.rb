class StudentCourcesController < ApplicationController
  before_action :set_student_cource, only: [:show, :edit, :update, :destroy]

  # GET /student_cources
  # GET /student_cources.json
  def index
    @student_cources = StudentCource.all
  end

  # GET /student_cources/1
  # GET /student_cources/1.json
  def show
  end

  # GET /student_cources/new
  def new
    @student_cource = StudentCource.new
  end

  # GET /student_cources/1/edit
  def edit
  end

  # POST /student_cources
  # POST /student_cources.json
  def create
    @student_cource = StudentCource.new(student_cource_params)

    respond_to do |format|
      if @student_cource.save
        format.html { redirect_to @student_cource, notice: 'Student cource was successfully created.' }
        format.json { render :show, status: :created, location: @student_cource }
      else
        format.html { render :new }
        format.json { render json: @student_cource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_cources/1
  # PATCH/PUT /student_cources/1.json
  def update
    respond_to do |format|
      if @student_cource.update(student_cource_params)
        format.html { redirect_to @student_cource, notice: 'Student cource was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_cource }
      else
        format.html { render :edit }
        format.json { render json: @student_cource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_cources/1
  # DELETE /student_cources/1.json
  def destroy
    @student_cource.destroy
    respond_to do |format|
      format.html { redirect_to student_cources_url, notice: 'Student cource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_cource
      @student_cource = StudentCource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_cource_params
      params.require(:student_cource).permit(:branch_id, :student_id, :sequence_no, :coruse_id, :lecture_startdate, :lecture_enddate, :timetable_week, :timetabel_time, :class)
    end
end
