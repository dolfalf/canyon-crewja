class StudentLogsController < ApplicationController
  before_action :set_student_log, only: [:show, :edit, :update, :destroy]

  # GET /student_logs
  # GET /student_logs.json
  def index
    @student_logs = StudentLog.all
  end

  # GET /student_logs/1
  # GET /student_logs/1.json
  def show
  end

  # GET /student_logs/new
  def new
    @student_log = StudentLog.new
  end

  # GET /student_logs/1/edit
  def edit
  end

  # POST /student_logs
  # POST /student_logs.json
  def create
    @student_log = StudentLog.new(student_log_params)

    respond_to do |format|
      if @student_log.save
        format.html { redirect_to @student_log, notice: 'Student log was successfully created.' }
        format.json { render :show, status: :created, location: @student_log }
      else
        format.html { render :new }
        format.json { render json: @student_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_logs/1
  # PATCH/PUT /student_logs/1.json
  def update
    respond_to do |format|
      if @student_log.update(student_log_params)
        format.html { redirect_to @student_log, notice: 'Student log was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_log }
      else
        format.html { render :edit }
        format.json { render json: @student_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_logs/1
  # DELETE /student_logs/1.json
  def destroy
    @student_log.destroy
    respond_to do |format|
      format.html { redirect_to student_logs_url, notice: 'Student log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_log
      @student_log = StudentLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_log_params
      params.require(:student_log).permit(:branch_id, :student_id, :sequence_no, :log_entry_date, :log_entry_contents, :log_engry_person)
    end
end
