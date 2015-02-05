class BlogPostsController < ApplicationController

 def new
   @blog_post = BlogPost.new
 end

  def create
   blog_post = BlogPost.new(blog_post_params)
   if blog_post.save
     redirect_to blog_posts_path
   else
     @blog_post = BlogPost.new(blog_post_params)
     render :new
   end
  end

  def index
    @blog_posts = BlogPost.all
  end

  def edit
    @blog_post = BlogPost.find(params[:id])
  end

  def show
    @blog_post = BlogPost.find(params[:id])
  end

  def update
    blog_post = BlogPost.find(params[:id])
    if blog_post.update(params)
      redirect_to
    else
    render :edit
    end
  end



 private

 def blog_post_params
   params.require(:blog_post).permit(:title, :author, :content)
  end
end
