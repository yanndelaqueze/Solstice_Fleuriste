class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_product, only: %i[show edit update destroy]

  def index
    @products = Product.all.order(order: :asc)
  end

  def show
    @order_item = OrderItem.new
  end

  def new
    @categories = Category.all
    @product = Product.new
  end

  def create
    @categories = Category.all
    @product = Product.new(product_params)
    @product.category_id = params[:product][:category_id]
    if @product.save
      redirect_to category_path(@product.category), notice: 'Product was successfully created'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to category_path(@product.category), notice: 'Product was successfully updated'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy
    redirect_to request.referrer || root_url
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :min_price, :available, :position, :category_id)
  end
end
