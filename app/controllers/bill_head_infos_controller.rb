class BillHeadInfosController < ApplicationController
  before_action :set_bill_head_info, only: [:show, :edit, :update, :destroy]

  # GET /bill_head_infos
  # GET /bill_head_infos.json
  def index
    @bill_head_infos = BillHeadInfo.all
  end

  # GET /bill_head_infos/1
  # GET /bill_head_infos/1.json
  def show
  end

  # GET /bill_head_infos/new
  def new
    @bill_head_info = BillHeadInfo.new
  end

  # GET /bill_head_infos/1/edit
  def edit
  end

  # POST /bill_head_infos
  # POST /bill_head_infos.json
  def create
    @bill_head_info = BillHeadInfo.new(bill_head_info_params)

    respond_to do |format|
      if @bill_head_info.save
        format.html { redirect_to @bill_head_info, notice: 'Bill head info was successfully created.' }
        format.json { render :show, status: :created, location: @bill_head_info }
      else
        format.html { render :new }
        format.json { render json: @bill_head_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bill_head_infos/1
  # PATCH/PUT /bill_head_infos/1.json
  def update
    respond_to do |format|
      if @bill_head_info.update(bill_head_info_params)
        format.html { redirect_to @bill_head_info, notice: 'Bill head info was successfully updated.' }
        format.json { render :show, status: :ok, location: @bill_head_info }
      else
        format.html { render :edit }
        format.json { render json: @bill_head_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_head_infos/1
  # DELETE /bill_head_infos/1.json
  def destroy
    @bill_head_info.destroy
    respond_to do |format|
      format.html { redirect_to bill_head_infos_url, notice: 'Bill head info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill_head_info
      @bill_head_info = BillHeadInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bill_head_info_params
      params.require(:bill_head_info).permit(:payment)
    end
end
