class MerchandiseController < ApplicationController
  def new
    @merchandise = Merchandise.new
  end

  def create
    @merchandise = Merchandise.new(merchandise_params)
    if @merchandise.save
      redirect_to :merchandise_list, notice: "#{@merchandise.name} created"
    else
      render :new
    end
  end

  def edit
    @merchandise = Merchandise.find(params[:id])
  end

  def update
    @merchandise = Merchandise.find(params[:id])
    if @merchandise.update_attributes(merchandise_params)
      redirect_to :merchandise_list, notice: "#{@merchandise.name} updated"
    else
      render :edit
    end
  end

  def destroy
    @merchandise = Merchandise.find(params[:id])
    @merchandise.destroy
    redirect_to :merchandise_list, notice: "#{@merchandise.name} deleted"
  end

  def index
    @merchandise = Merchandise.all.order("updated_at DESC")
  end

  def merchandise_list
    @merchandise = Merchandise.all.order("updated_at DESC")
  end

  private

  def merchandise_params
    params.require(:merchandise).permit(:name, :description, :price, :avatar)
  end
end
