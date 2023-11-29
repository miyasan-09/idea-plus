class ProductsController < ApplicationController
  before_action :authenticate_company!, only: [:new, :create]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      @products = Product.includes(:company)
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:name, :title, :description, :image).merge(company_id: current_company.id)
  end
end
