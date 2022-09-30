class ArticlesController < ApplicationController
    def show
        @articles = Article.find(params[:id])
    end
    
    def index
        @articles = Article.all
    end
    
    def new
        @article = Article.new
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

end