class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  before_action :set_post, only: [:edit, :update]
  after_action :md_to_html, only: [:create, :update]

  def index
    @posts = Post.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      flash[:success] = "Post created"
      redirect_to root_path
    else
      flash[:alert] = @post.errors.messages
      render 'new'
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      flash[:success] = "Post updated"
      redirect_to root_path
    else
      flash[:alert] = @post.errors.messages
      render 'edit'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content_md)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def md_to_html
    ConvertMarkdownJob.perform_now(@post.id) if @post.id
  end
end
