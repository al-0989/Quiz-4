class ProductsController < ApplicationController

  def index
    @company = Company.find params[:company_id]
    render json: @company.products
  end
  
end
