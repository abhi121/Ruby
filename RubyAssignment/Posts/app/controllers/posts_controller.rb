class PostsController < ApplicationController

    def new
       @post=Post.new
    end

    def create 
       @post=Post.new(par)
       @post.user_id=1

       if @post.save
       	  redirect_to @post
       else
       	  render 'new'

    end 

    def index 
      @post =Post.all
    end

    def update 
       @post=Post.find(params[:id])
       if @post.update(par1)
       	   redirect_to @post
       else
       	   render 'edit'
       end
     


    end

    def destroy
      @post=Post.find(params[:id])
      @post.destroy
      redirect_to new_post_path

    end

    def edit
        
        @post=Post.find(params[:id])


 
    end


    def show
        
        @post=Post.find(params[:id])
    end

    end 



    private

      def par
      	params.require(:post).permit(:body,:user_id)
      end
      def par1
      	params.require(:post).permit(:body)
      end
end