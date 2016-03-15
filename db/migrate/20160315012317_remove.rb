class Remove < ActiveRecord::Migration
  def change
    remove_reference :companies, :product, index: true, foreign_key: true
  end
end
