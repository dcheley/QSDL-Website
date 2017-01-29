class BarsController < ApplicationController
  def index
    @bars = Bar.all
  end

  private
  def bar_params
    params.require(:bar).permit(:name, :address, :phone, :url)
  end
end
