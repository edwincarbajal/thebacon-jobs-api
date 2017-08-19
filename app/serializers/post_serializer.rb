class PostSerializer < ActiveModel::Serializer
  attributes :id, :position, :description, :employer, :location, :category

  belongs_to :user, key: "author"

  def description
    JSON.parse(object.description).join()
  end
end
