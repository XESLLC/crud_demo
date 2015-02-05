class BlogPostsController < ApplicationController

 def new
   @blog_post = BlogPost.new
 end


 def blog_post_params
   params.require(:blog_posts).permit(:title, :author, :content)
  end
end
