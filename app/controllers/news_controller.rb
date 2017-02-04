class NewsController < ApplicationController
  def new
    @news = News.new
  end

  def create
    @news = News.new(news_params)
    if @news.save
      redirect_to "/news/index", notice: "Article added!"
    else
      render :new
    end
  end

  def edit
    @news = News.find(params[:id])
  end

  def update
    @news = News.find(params[:id])
    if @news.update_attributes(news_params)
      redirect_to "/news/index", notice: "Article updated!"
    else
      render :edit
    end
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy
    redirect_to "/news/index", notice: "Article deleted!"
  end

  def index
  end

  private
  def news_params
    params.require(:news).permit(:title, :content)
  end
end
