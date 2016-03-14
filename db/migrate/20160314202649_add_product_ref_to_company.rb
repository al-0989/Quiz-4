class AddProductRefToCompany < ActiveRecord::Migration
  def change
    add_reference :companies, :product, index: true, foreign_key: true
  end
end
