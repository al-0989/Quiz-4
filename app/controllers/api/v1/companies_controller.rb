class Api::V1::CompaniesController < ApplicationController

  def index
    @companies = Company.all.limit(5)
    render json: @companies
  end

end
