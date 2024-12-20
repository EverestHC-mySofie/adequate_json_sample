# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.references :category
      t.string :name
      t.string :description
      t.decimal :price, precision: 10, scale: 2
      t.timestamps
    end
  end
end
