class RemoveProductsFromCompany < ActiveRecord::Migration
  def change
    remove_column :companies, :products
  end
end
