class BarsController < ApplicationController
  def index
    @bars = Bar.all.order("name ASC")
  end

  def edit
    @bar = Bar.find(params[:id])
  end

  def update
    @bar = Bar.find(params[:id])
    if @bar.update_attributes(bar_params)
      redirect_to root_url, notice: "Bar updated!"
    else
      render :edit
    end
  end

  private
  def bar_params
    params.require(:bar).permit(:name, :address, :phone, :url)
  end
end
