class SuppliersController < ApplicationController
  def index
    supplier = Supplier.all
    render json: supplier.as_json
  end
end
