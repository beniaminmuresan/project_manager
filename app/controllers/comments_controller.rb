# frozen_string_literal: true

class CommentsController < ApplicationController
  def create
    @comment = @commentable.comments.new(comment_params)
    respond_to do |format|
      if @comment.save
        format.html do
          puts @commentable.attributes
          redirect_back fallback_location: @commentable, notice: 'Your comment was sucessfully posted.'
        end
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:full_name, :body)
    end
end
