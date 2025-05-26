# frozen_string_literal: true

FactoryBot.define do
  factory :order_product do
    association :order
    association :product
    quantity { 1 }
  end
end
