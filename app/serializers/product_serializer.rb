class ProductSerializer < ActiveModel::Serializer
  attributes :id, :item_arr

  def item_arr
    object.
  end
end
