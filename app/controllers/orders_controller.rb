class OrdersController < ApplicationController
  before_action :authenticate_admin

  def create
    order = Order.new(user_id: params[:input_user_id],
                      product_id: params[:input_product_id],
                      quantity: params[:input_quantity],
                      subtotal: params[:input_subtotal],
                      tax: params[:input_tax],
                      total: params[:input_total])
    order.save
    render json: { message: "order created" }
  end

  def show
    render json: Order.find_by(id: params[:id]).as_json
  end

  def index
    render json: Order.all.as_json
  end
end
