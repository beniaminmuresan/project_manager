# frozen_string_literal: true

class Task < ApplicationRecord
  validates_presence_of :title, :body

  belongs_to :project
  has_many :comments, as: :commentable
end
