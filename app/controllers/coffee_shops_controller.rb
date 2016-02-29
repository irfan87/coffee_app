class CoffeeShopsController < ApplicationController
  def index
    @coffee_shops = CoffeeShop.all
  end

  def new
    @coffee_shop = CoffeeShop.new
  end

  def create
    @coffee_shop = CoffeeShop.new(coffee_shop_params)

    if @coffee_shop.save
      redirect_to coffee_shops_path
    else
      render :new
    end
  end

  def show
    @coffee_shop = CoffeeShop.find(params[:id])
  end

  def edit
    @coffee_shop = CoffeeShop.find(params[:id])
  end

  def update
    @coffee_shop = CoffeeShop.find(params[:id])

    if @coffee_shop.update(coffee_shop_params)
      redirect_to coffee_shop_path
    else
      render :edit
    end
  end

  def destroy
    @coffee_shop = CoffeeShop.find(params[:id])
    @coffee_shop.destroy

    redirect_to coffee_shops_path
  end

  private

  def coffee_shop_params
    params.require(:coffee_shop).permit(:name, :address, :area, :region, :postcode, :website, :email, :facebook_acc, :instagram_acc)
  end
end
