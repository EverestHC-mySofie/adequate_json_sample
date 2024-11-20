# frozen_string_literal: true

module Serializers
  class Category < AdequateJson::Base
    builder do |json, category|
      json.category do
        serialize category, variant: :no_wrapper
      end
    end

    builder :no_wrapper do |json, category|
      json.call(category, :id, :name)
    end
  end
end
