class Post < ApplicationRecord
  belongs_to :user

  validates_presence_of :position, :description, :employer, :location, :category
end
