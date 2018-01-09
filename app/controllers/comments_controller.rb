class CommentsController < ApplicationController
  before_action :set_post


  def create

  end



  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def set_post
    @post = Post.find(params[:post_id])
  end
end
