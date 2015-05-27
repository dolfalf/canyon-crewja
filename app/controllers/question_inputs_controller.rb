class QuestionInputsController < ApplicationController
  before_action :set_question_input, only: [:show, :edit, :update, :destroy]

  # GET /question_inputs
  # GET /question_inputs.json
  def index
    @question_inputs = QuestionInput.all
  end

  # GET /question_inputs/1
  # GET /question_inputs/1.json
  def show
  end

  # GET /question_inputs/new
  def new
    @question_input = QuestionInput.new
  end

  # GET /question_inputs/1/edit
  def edit
  end

  # POST /question_inputs
  # POST /question_inputs.json
  def create
    @question_input = QuestionInput.new(question_input_params)

    respond_to do |format|
      if @question_input.save
        format.html { redirect_to @question_input, notice: 'Question input was successfully created.' }
        format.json { render :show, status: :created, location: @question_input }
      else
        format.html { render :new }
        format.json { render json: @question_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_inputs/1
  # PATCH/PUT /question_inputs/1.json
  def update
    respond_to do |format|
      if @question_input.update(question_input_params)
        format.html { redirect_to @question_input, notice: 'Question input was successfully updated.' }
        format.json { render :show, status: :ok, location: @question_input }
      else
        format.html { render :edit }
        format.json { render json: @question_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_inputs/1
  # DELETE /question_inputs/1.json
  def destroy
    @question_input.destroy
    respond_to do |format|
      format.html { redirect_to question_inputs_url, notice: 'Question input was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_input
      @question_input = QuestionInput.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_input_params
      params.require(:question_input).permit(:branch_id, :input_id, :question_group, :question_number, :question_value, :question_comment)
    end
end
