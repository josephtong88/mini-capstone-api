class ProductsController < ApplicationController
  def showall
    products = Product.all
    render json: products.as_json
  end
end
