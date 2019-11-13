class Admin::DashboardController < ApplicationController

  def show
    @product_count = Product.count()
    @total_product_count = Product.sum(:quantity)
    @categories_count = Category.count()
  end
end
