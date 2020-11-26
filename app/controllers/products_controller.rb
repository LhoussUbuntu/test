class ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  def import
    Product.import(params[:file])
    redirect_to root_path, notice: 'File imported succesfully'
  end
end
