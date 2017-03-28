class OrderController < ApplicationController

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
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
  end

  def show
    @order = Order.find(params[:id])
  end

  private

  def orders_params
    params.require(:order).permit(:title, :delivered, :user_id)
  end

end
