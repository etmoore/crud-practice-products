class ProductsController < ApplicationController
  before_action :select_product, only: [:edit, :update, :show, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to @product
  end

  def show
  end

  private

  def select_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
