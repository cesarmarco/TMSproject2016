class OrdersDetailsController < ApplicationController
  before_action :set_orders_detail, only: [:show, :edit, :update, :destroy]

  # GET /orders_details
  # GET /orders_details.json
  def index
    @orders_details = OrdersDetail.all
  end

  # GET /orders_details/1
  # GET /orders_details/1.json
  def show
  end

  # GET /orders_details/new
  def new
    @orders_detail = OrdersDetail.new
  end

  # GET /orders_details/1/edit
  def edit
  end

  # POST /orders_details
  # POST /orders_details.json
  def create
    @orders_detail = OrdersDetail.new(orders_detail_params)

    respond_to do |format|
      if @orders_detail.save
        format.html { redirect_to @orders_detail, notice: 'Orders detail was successfully created.' }
        format.json { render :show, status: :created, location: @orders_detail }
      else
        format.html { render :new }
        format.json { render json: @orders_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders_details/1
  # PATCH/PUT /orders_details/1.json
  def update
    respond_to do |format|
      if @orders_detail.update(orders_detail_params)
        format.html { redirect_to @orders_detail, notice: 'Orders detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @orders_detail }
      else
        format.html { render :edit }
        format.json { render json: @orders_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders_details/1
  # DELETE /orders_details/1.json
  def destroy
    @orders_detail.destroy
    respond_to do |format|
      format.html { redirect_to orders_details_url, notice: 'Orders detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orders_detail
      @orders_detail = OrdersDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orders_detail_params
      params.require(:orders_detail).permit(:order_id, :product_id, :quantity)
    end
end
