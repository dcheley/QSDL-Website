class NewsController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
  end

  private
  def news_params
    params.require(:news).permit(:title, :content)
  end
end
