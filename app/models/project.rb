# frozen_string_literal: true

class Project < ApplicationRecord
  after_commit :create_status_comment, on: [:update]

  validates_presence_of :title, :body

  has_many :comments, as: :commentable
  has_many :tasks, dependent: :destroy

  private

    def create_status_comment
      return unless completed_previously_changed?

      status = completed_previously_was ? 'uncompleted' : 'completed'
      comments.create(full_name: 'System', body: "The project is now #{status}")
    end
end
