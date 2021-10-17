class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products.as_json
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product.as_json
  end

  def create
    product = Product.new(
      name: params[:input_name],
      price: params[:input_price],
      imagine_url: params[:input_imagine_url],
      description: params[:description],
    )
    product.save
    render json: product.as_json
  end

  def update
    the_id = params[:id]
    product = Product.find_by(id: the_id)
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.imagine_url = params[:imagine_url] || product.imagine_url
    product.description = params[:description] || product.description
    product.save
    render json: product.as_json
  end

  def destroy
    product = Product.find_by(id: params[:id])  
  product.destroy
  render json: {message: "The product has been destroyed"}
  end
end
