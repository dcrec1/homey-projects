class CommentsController < ApplicationController
  respond_to :js

  def create
    project = Project.friendly.find(params[:project_id])
    @comment = project.comments.new(permitted_params)
    @comment.user = current_user
    @comment.save
  end

  private

  def permitted_params
    params.expect(comment: [ :body ])
  end
end
