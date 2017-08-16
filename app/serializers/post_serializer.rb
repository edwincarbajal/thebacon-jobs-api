class PostSerializer < ActiveModel::Serializer
  attributes :id, :position, :description, :employer, :location, :category
end
