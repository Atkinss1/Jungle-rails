class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_NAME'], 
                               password: ENV['ADMIN_PASSWORD']

  def show

    @productCount = Product.count
    @categoryCount = Category.count
    @product = Product.all
    @category = Category.all
  end
end
