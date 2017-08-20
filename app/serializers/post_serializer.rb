class PostSerializer < ActiveModel::Serializer
  attributes :id, :position, :description, :employer, :location, :category

  # def description
  #   JSON.parse(object.description).join()
  # end
end
