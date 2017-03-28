class OrdersController < ApplicationController
before_action :authenticate_user!

  def index
    @orders = Order.all
    @users = User.where(admin:false)
  end

  def new
    @order = Order.new(orders_params)
  end

  def add_order
    @order = Order.find(params[:title])
    @order.update()
  end

  def assign_order_to_user
    @user = User.find(params[:id])
  end

  def save_order_to_user
    @user.update
  end

  def update
    @order = Order.find(params[:format])
    @order.update(orders_params)
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
    params.require(:order).permit(:title, :delivered, :user_id,:format,:id)
  end

end
