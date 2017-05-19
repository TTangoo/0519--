class PostsController < ApplicationController
  def index
       @users = User.all
      @posts = Post.all
      
     
  end

  def new
  end
  
  def create
    post = Post.new
    post.title = params[:post_title]
    post.content = params[:post_content]
    post.image = params[:pic]
    post.save
  
    redirect_to '/posts/index'
  end
  
  def show
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end
  
  def edit
    @post = Post.find(params[:post_id])
  end
  
  def update
    post = Post.find(params[:post_id])
    post.title = params[:post_title]
    post.content = params[:post_content]
    post.save
    redirect_to '/posts/index'
  
  end
 
  def destroy
    post = Post.find(params[:post_id])
    post.destroy!
    redirect_to '/posts/index'
  end
  
  
end
