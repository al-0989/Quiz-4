class CompaniesController < ApplicationController

  def index
    @companies = Company.all.limit(2)
    render json: @companies
  end
end
