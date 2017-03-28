class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(orders_params)
    @order.save
  end

  def edit
    @order = Order.find(params[:format])
  end

  def update
    @order = Order.find(params[:format])
    @order.update(orders_params)
  end

  def destroy
    @order = Order.find(params[:format])
    @order.destroy
  end

  def show
    @order = Order.find(params[:format])
  end

  private

  def orders_params
    params.require(:order).permit(:title, :delivered, :user_id, :format)
  end

end
