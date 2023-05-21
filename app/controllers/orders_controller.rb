class OrdersController < ApplicationController
  def index
    @orders_count = Order.all.count
  end
end