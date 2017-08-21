class PostSerializer < ActiveModel::Serializer
  attributes :id, :position, :description, :employer, :location, :term, :categories
end
