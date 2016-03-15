class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :products

  def products
    object.products.map(&:item)

    # object.products.map { |x|
    #   x.item
    # }
  end
end
