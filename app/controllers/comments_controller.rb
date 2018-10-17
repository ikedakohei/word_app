class CommentsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @users = User.comments_desc
  end

  def new
    @comment = current_user.comments.build
  end

  def create
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      redirect_to root_url, notice: (I18n.t 'notice.create_comment')
    else
      render :new
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
