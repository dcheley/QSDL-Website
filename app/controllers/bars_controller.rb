class BarsController < ApplicationController
  def index
    @bars = Bar.all.order("name ASC")
  end

  def edit
    @bar = bar.find(bar_params)
  end

  private
  def bar_params
    params.require(:bar).permit(:name, :address, :phone, :url)
  end
end
