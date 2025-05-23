class CommentsController < ApplicationController
  before_action :set_project

  def create
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def create
    @comment = Comment.new(comment_params).register

    redirect_to @comment.commentable
  end

  private

  def comment_params
    params.require(:comment)
      .permit(:commentary, :status)
      .merge(commentable: @project)
  end

  def set_project
    @project = Project.find(params[:project_id])
  end
end
