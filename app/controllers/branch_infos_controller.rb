class BranchInfosController < ApplicationController
  before_action :set_branch_info, only: [:show, :edit, :update, :destroy]

  # GET /branch_infos
  # GET /branch_infos.json
  def index
    @branch_infos = BranchInfo.all
  end

  # GET /branch_infos/1
  # GET /branch_infos/1.json
  def show
  end

  # GET /branch_infos/new
  def new
    @branch_info = BranchInfo.new
  end

  # GET /branch_infos/1/edit
  def edit
  end

  # POST /branch_infos
  # POST /branch_infos.json
  def create
    @branch_info = BranchInfo.new(branch_info_params)

    respond_to do |format|
      if @branch_info.save
        format.html { redirect_to @branch_info, notice: 'Branch info was successfully created.' }
        format.json { render :show, status: :created, location: @branch_info }
      else
        format.html { render :new }
        format.json { render json: @branch_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /branch_infos/1
  # PATCH/PUT /branch_infos/1.json
  def update
    respond_to do |format|
      if @branch_info.update(branch_info_params)
        format.html { redirect_to @branch_info, notice: 'Branch info was successfully updated.' }
        format.json { render :show, status: :ok, location: @branch_info }
      else
        format.html { render :edit }
        format.json { render json: @branch_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /branch_infos/1
  # DELETE /branch_infos/1.json
  def destroy
    @branch_info.destroy
    respond_to do |format|
      format.html { redirect_to branch_infos_url, notice: 'Branch info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_branch_info
      @branch_info = BranchInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def branch_info_params
      params.require(:branch_info).permit(:branch_name, :address)
    end
end
