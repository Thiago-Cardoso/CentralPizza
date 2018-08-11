class CategoryProductsController < ApplicationController
    before_action :set_category_product, only: [:show, :edit, :update, :destroy]
  def index
    @category_products = CategoryProduct.all
  end

  def show
  end

  def new
    @category_product = CategoryProduct.new
  end

  def create
    @category_product = CategoryProduct.new(category_params)
    respond_to do |format|
      if @category_product.save
        format.html { redirect_to @category_product, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category_product }
      else
        format.html { render :new }
        format.json { render json: @category_product.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @category_product.update(category_params)
        format.html { redirect_to @category_product, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category_product }
      else
        format.html { render :edit }
        format.json { render json: @category_product.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @category_product.destroy
    respond_to do |format|
      format.html { redirect_to category_products_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_category_product
    @category_product = CategoryProduct.find(params[:id])
  end

  private
  def category_params
    params.require(:category_product).permit(:name, :description)
  end

end
