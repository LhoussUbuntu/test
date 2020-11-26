class ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product, only: [:show, :edit, :update, :destroy]

 
  def index
    @q = Product.ransack(params[:q])
    @products = @q.result(distinct: true)
  end

  def import
    Product.import(params[:file])
    redirect_to root_path, notice: 'File imported succesfully'
  end
end
