class MainController < ApplicationController

def index
	@orders = Order.all
end

end
