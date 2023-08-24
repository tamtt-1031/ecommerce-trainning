class Admin::ProductsController < ApplicationController
  before_action :load_product, only: %i(edit update)
  before_action :load_categories, only: %i(new edit)
  
  def index
    # @products = Product.all
    @pagy, @products = pagy(Product.all, items: 5)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save 
      flash[:success] = t("admin.crud.product.success_message")
      redirect_to admin_products_path
    else
      @categories = Category.all
      render :new
    end
  end

  def edit; end
  
  def update
    if @product.update!(product_params)
      flash[:success] = t("admin.crud.product.success_message")
      redirect_to admin_products_path
    else
      @categories = Category.all
      render :edit
    end
  end

  private

  def load_product
    @product = Product.find_by(params[:id])
  end

  def load_categories
    @categories = Category.all
  end

  def product_params
    params.require(:product).permit(:name, :price, :description, :status, :category_id, :image, :body)
  end
end
