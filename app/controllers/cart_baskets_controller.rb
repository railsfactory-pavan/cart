class CartBasketsController < ApplicationController
  before_action :set_cart_basket, only: %i[ show edit update destroy ]

  # GET /cart_baskets or /cart_baskets.json
  def index
    @cart_baskets = CartBasket.all
  end

  # GET /cart_baskets/1 or /cart_baskets/1.json
  def show
  end

  # GET /cart_baskets/new
  def new
    @cart_basket = CartBasket.new
  end

  # GET /cart_baskets/1/edit
  def edit
  end

  # POST /cart_baskets or /cart_baskets.json
  def create
    @cart_basket = CartBasket.new(cart_basket_params)

    respond_to do |format|
      if @cart_basket.save
        format.html { redirect_to cart_basket_url(@cart_basket), notice: "Cart basket was successfully created." }
        format.json { render :show, status: :created, location: @cart_basket }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cart_basket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cart_baskets/1 or /cart_baskets/1.json
  def update
    respond_to do |format|
      if @cart_basket.update(cart_basket_params)
        format.html { redirect_to cart_basket_url(@cart_basket), notice: "Cart basket was successfully updated." }
        format.json { render :show, status: :ok, location: @cart_basket }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cart_basket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cart_baskets/1 or /cart_baskets/1.json
  def destroy
    @cart_basket.destroy

    respond_to do |format|
      format.html { redirect_to cart_baskets_url, notice: "Cart basket was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart_basket
      @cart_basket = CartBasket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cart_basket_params
      params.require(:cart_basket).permit(:product_id)
    end
end
