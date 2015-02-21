class ProductsController < ApplicationController
  
  def index
    @products = Product.all
  end

  def new
    @product = Product.new 
    @product.image_urls.build 
  end

  def create
    @product = Product.new(permited_params)
    if @product.save!
      redirect_to products_path
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(permited_params)
    redirect_to products_path
    # redirect_to product_path(@product)
  end

  private 

  def permited_params
    params.require(:product).permit(:name, :category, :price, :image, image_url_attributes: [:id, :url])
  end

  
end

