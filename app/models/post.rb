class Post < ApplicationRecord
  validates_presence_of :position, :description, :employer, :location, :category
end
