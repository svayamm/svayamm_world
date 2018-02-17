class JasonArticlesController < ApplicationController
  
  def index
    @articles = JasonArticle.alphabetical.paginate(:page => params[:page]).per_page(10)
  end


  def show
    @article = JasonArticle.find(params[:id])
  end


  def new
    @article = JasonArticle.new
  end


  def edit
    @article = JasonArticle.find(params[:id])
  end


  def create
    @article = JasonArticle.new(params[:jason_article])
    if @article.save
      flash[:notice] = 'Article was successfully created.'
      redirect_to jason_article_path(@article)
    else
      render :action => "new"
    end
  end


  def update
    @article = JasonArticle.find(params[:id])
    if @article.update_attributes(params[:jason_article])
      flash[:notice] = 'Article was successfully updated.'
      redirect_to article_path(@article)
    else
      render :action => "edit"
    end
  end


  def destroy
    @article = JasonArticle.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end
end
