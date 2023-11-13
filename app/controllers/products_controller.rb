class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  private

  def Product_params
    params.require(:Product).permit(:name, :title, :description, :image).merge(company_id: company.id)
  end
end
