class ArticlesController < ApplicationController

   http_basic_authenticate_with name:"TROY" ,password: "stark",
   except: [:index ,:show]

   def new
   	@article=Article.new
   end
   
   def index     
     @article = Article.all
   end



   def create
       @article = Article.new(pa_art)
       if @article.save
          redirect_to @article
       else
          render 'new'
       end

   end

   def update
     
     @article=Article.find(params[:id])
     if @article.update(pa_art)
     	redirect_to @article
     else
     	render 'edit'
     end

   end

   def edit
   	@article=Article.find(params[:id])
   end

   def destroy
   	 @article=Article.find(params[:id])
   	 @article.destroy

   	 redirect_to articles_path
   end
    


   def show
   	  @article=Article.find(params[:id])
   end

   private
     def pa_art
     	params.require(:article).permit(:title,:text)
     end


end
