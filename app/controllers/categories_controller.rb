# frozen_string_literal: true

class CategoriesController < ApplicationController
  def index
    render_json Category.order(:name)
  end
end
