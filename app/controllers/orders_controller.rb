class OrdersController < ApplicationController
before_action :authenticate_user!

  def index
    @orders = Order.all
    @users = User.where(admin:false)
  end

  def new
    @order = Order.new(orders_params)
  end

  def delivered
    @order = Order.find(params[:id])
    @order.update_attribute(:delivered,true)
    redirect_to root_path
  end

  def assign_order_to_user
    @orders = Order.all
    @user = User.find(params[:id])
  end

  def update
    @order = Order.find_by(:title=>params['user']['order']['title'])
    @order.update_attribute(:user_id,params['user']['user_id'])
    redirect_to root_path
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
