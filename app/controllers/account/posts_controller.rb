class Account::PostsController < ApplicationController
    before_action :authenticate_account!
  
    def new
        @post = Post.new
        respond_to do |format|
          format.html # This line specifies the format for the HTML response
          format.json { render json: @post }
        end
      end
      
  
    def create
      @post = current_account.posts.build(post_params)
  
      if @post.save
        redirect_to account_posts_path(current_account)
      else
        render :new
      end
    end

    def index
        @posts = Post.active
    end
  
    private
  
    def post_params
      params.require(:post).permit(:image)
    end
  end
  