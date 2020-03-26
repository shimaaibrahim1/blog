class CommentsController < ApplicationController
  skip_before_action :verify_authenticity_token


  def create
      @comment = Comment.new
      @comment.post_id = params[:format]
      @comment.contant = params[:contant]
      @comment.save

      redirect_to :posts
    end

    def destroy
      Comment.find(params[:id]).destroy
      redirect_to :posts
  
    end

  
end
