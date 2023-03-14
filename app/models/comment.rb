class Comment < ApplicationRecord
  validates_presence_of :full_name, :body

  belongs_to :commentable, polymorphic: true
end
