class MemorialsController < ApplicationController
  def create
  end

  def update
  end

  def destroy
  end

  def index
  end

  private

  def memorial_params
    params.require(:memorial).permit(:name, :bio, :avatar)
  end
end
