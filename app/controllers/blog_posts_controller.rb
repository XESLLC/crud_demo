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


 private

 def blog_post_params
   params.require(:blog_post).permit(:title, :author, :content)
  end
end
