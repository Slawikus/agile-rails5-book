class StoreController < ApplicationController
  before_action :increment_count, only: [:index]

  def index
    @products = Product.order(:title)
  end

  private
    def increment_count
      session[:counter].nil? ? session[:counter] = 0 : session[:counter]+=1
      @counter = session[:counter]
    end
end
