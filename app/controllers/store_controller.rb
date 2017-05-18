class StoreController < ApplicationController
  include CurrentCart

  before_action :increment_counter, only: [:index]
  before_action :set_cart

  def index
    @products = Product.order(:title)
  end

  private
    def increment_counter
      @counter = session[:counter] || 0
      @counter += 1
      session[:counter] = @counter
    end
end
