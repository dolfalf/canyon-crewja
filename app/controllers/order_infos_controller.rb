class OrderInfosController < ApplicationController
  before_action :set_order_info, only: [:show, :edit, :update, :destroy]

  # GET /order_infos
  # GET /order_infos.json
  def index
    @order_infos = OrderInfo.all
  end

  # GET /order_infos/1
  # GET /order_infos/1.json
  def show
  end

  # GET /order_infos/new
  def new
    @order_info = OrderInfo.new
  end

  # GET /order_infos/1/edit
  def edit
  end

  # POST /order_infos
  # POST /order_infos.json
  def create
    @order_info = OrderInfo.new(order_info_params)

    respond_to do |format|
      if @order_info.save
        format.html { redirect_to @order_info, notice: 'Order info was successfully created.' }
        format.json { render :show, status: :created, location: @order_info }
      else
        format.html { render :new }
        format.json { render json: @order_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_infos/1
  # PATCH/PUT /order_infos/1.json
  def update
    respond_to do |format|
      if @order_info.update(order_info_params)
        format.html { redirect_to @order_info, notice: 'Order info was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_info }
      else
        format.html { render :edit }
        format.json { render json: @order_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_infos/1
  # DELETE /order_infos/1.json
  def destroy
    @order_info.destroy
    respond_to do |format|
      format.html { redirect_to order_infos_url, notice: 'Order info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_info
      @order_info = OrderInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_info_params
      params.require(:order_info).permit(:application_id)
    end
end
