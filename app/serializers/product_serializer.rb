class ProductSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :state, :price, :available, :image, :user_id, :category_id
  has_one :user
  has_one :category

  def image
    if object.image.attached?
      {
        cloudinary: object.image.service_url,
      }
    end
  end
end
