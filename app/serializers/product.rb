# frozen_string_literal: true

module Serializers
  class Product < AdequateJson::Base
    builder do |json, product|
      json.product do
        serialize product, variant: :no_wrapper
        json.call(product, :description, :created_at, :updated_at, :price)
        serialize product.category
      end
    end

    builder(:no_wrapper) do |json, product|
      json.call(product, :id, :name)
    end
  end
end
