class OrdersController < ApplicationController
before_action :authenticate_user!

  def index
    @orders = Order.all
    @users = User.where(admin:false)
  end

  def new
    @order = Order.new(orders_params)
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
