class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @posts = Post.order(created_at: :desc)
  end

  def new
    @post= Post.new
  end

  def create
    @post = User.find().posts.create(post_params)

    if @post.persisted?
      redirect_to :posts
    else
      render :new
    end
  end

  def edit
    @post= Post.find(params[:id])
  end

  def update
    @post= Post.find(params[:id])
   
    if @post.update(post_params)
      redirect_to :posts
    else
      render :edit
    end  
  end

  
  def show
    @post= Post.find(params[:id])
  end


  def destroy
    Post.find(params[:id]).destroy
    redirect_to action: :index
  end


  private
  def post_params
    params.require(:post).permit(:title, :contant )
  end
end
