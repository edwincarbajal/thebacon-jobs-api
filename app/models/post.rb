class Post < ApplicationRecord
  validates_presence_of :position, :description, :employer, :location, :term, :categories

  scope :desc, -> { order(created_at: :desc) }
end
