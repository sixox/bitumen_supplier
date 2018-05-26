class ProductsController < ApplicationController

  layout 'single_product'

  def index

    @products = Product.newest_first

  end

  def show
    # @product = Product.find(params[:id])
  end

  def new
  end

  def edit
  end

  def delete
  end
end
