class ProductsController < ApplicationController


  def index
    @cart = cart
  end

  # def add_to_cart
  #   cart << params[:item]
  #   render :index
  # end

  def create
    @product = params[:product]
    cart << @product
    redirect_to products_path
  end
end
