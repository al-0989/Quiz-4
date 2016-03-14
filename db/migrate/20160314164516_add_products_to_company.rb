class AddProductsToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :products, :text, array: true, default:[]
  end
end
