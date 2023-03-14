# frozen_string_literal: true

class Project < ApplicationRecord
  validates_presence_of :title, :body

  has_many :comments, as: :commentable
  has_many :project_tasks
end
