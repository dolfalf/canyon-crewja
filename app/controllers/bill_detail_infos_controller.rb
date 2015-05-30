class BillDetailInfosController < ApplicationController
  before_action :set_bill_detail_info, only: [:show, :edit, :update, :destroy]

  # GET /bill_detail_infos
  # GET /bill_detail_infos.json
  def index
    @bill_detail_infos = BillDetailInfo.all
  end

  # GET /bill_detail_infos/1
  # GET /bill_detail_infos/1.json
  def show
  end

  # GET /bill_detail_infos/new
  def new
    @bill_detail_info = BillDetailInfo.new
  end

  # GET /bill_detail_infos/1/edit
  def edit
  end

  # POST /bill_detail_infos
  # POST /bill_detail_infos.json
  def create
    @bill_detail_info = BillDetailInfo.new(bill_detail_info_params)

    respond_to do |format|
      if @bill_detail_info.save
        format.html { redirect_to @bill_detail_info, notice: 'Bill detail info was successfully created.' }
        format.json { render :show, status: :created, location: @bill_detail_info }
      else
        format.html { render :new }
        format.json { render json: @bill_detail_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bill_detail_infos/1
  # PATCH/PUT /bill_detail_infos/1.json
  def update
    respond_to do |format|
      if @bill_detail_info.update(bill_detail_info_params)
        format.html { redirect_to @bill_detail_info, notice: 'Bill detail info was successfully updated.' }
        format.json { render :show, status: :ok, location: @bill_detail_info }
      else
        format.html { render :edit }
        format.json { render json: @bill_detail_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_detail_infos/1
  # DELETE /bill_detail_infos/1.json
  def destroy
    @bill_detail_info.destroy
    respond_to do |format|
      format.html { redirect_to bill_detail_infos_url, notice: 'Bill detail info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill_detail_info
      @bill_detail_info = BillDetailInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bill_detail_info_params
      params.require(:bill_detail_info).permit(:application_id)
    end
end
