class PostSerializer < ActiveModel::Serializer
  attributes :id, :position, :description, :employer, :location, :category

  belongs_to :user, key: "author"
end
