class Admin::CategoriesController < ApplicationController
  
  def index
    @categories = Category.order(id: :desc).all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  # Category does not need destroy
  # def destroy
  #   @product = Product.find params[:id]
  #   @product.destroy
  #   redirect_to [:admin, :products], notice: 'Product deleted!'
  # end
  #----------------------------------

  private

  def category_params
    params.require(:category).permit(
      :name,
      :description,
      :product_id,
      :quantity,
      :image,
      :price
    )
  end

end
