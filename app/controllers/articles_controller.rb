class ArticlesController < ApplicationController
    def show
        @article_show = Article.find(params[:id])
    end
    
    def index
        @articles = Article.all
    end
    
    def new
        @article = Article.new
    end
    
    def edit
        @article_edit = Article.find(params[:id])
    end
    
    def create
        @article = Article.new(params.require(:article).permit(:title,:description))
        if @article.save
            flash[:notice] = 'The Article is successfully created' #throwing an alert and you can use tthis from html.erb files 
            redirect_to @article
        else
            render 'new'
        end
    end
    
    def update
        @article_update = Article.find(params[:id])
        if @article_update.update(params.require(:article).permit(:title, :description))
            flash[:notice] = "The Article is successfully updated"
            redirect_to @article_update
        else
            render 'edit'
        end
    end
    
    def destroy
        @article_dlt = Article.find(params[:id])
        @article_dlt.delete
        redirect_to articles_path
    end

end