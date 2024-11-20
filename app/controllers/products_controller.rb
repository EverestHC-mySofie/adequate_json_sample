# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    render_json Product.order(:name).page(params[:page]).per(10)
  end

  def show
    render_json Product.find(params[:id])
  end

  def create
    product = Product.new(product_params)
    if product.save
      render_json product
    else
      render_error :invalid_model, product
    end
  end

  private

  def product_params
    params.fetch(:product, {}).permit(:name, :description, :price, :category_id)
  end
end
