# frozen_string_literal: true

class OrderHistoriesController < ApplicationController
  def index
    @order_histories = OrderHistory.all
  end
end
