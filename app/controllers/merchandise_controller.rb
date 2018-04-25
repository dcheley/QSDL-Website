class MerchandiseController < ApplicationController
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

  def merchandise_params
    params.require(:merchandise).permit(:avatar)
  end
end
