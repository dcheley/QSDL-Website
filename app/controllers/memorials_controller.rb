class MemorialsController < ApplicationController
  def new
    @memorial = Memorial.new
  end

  def create
    @memorial = Memorial.new(memorial_params)
    if @memorial.save
      redirect_to :memorium_list, notice:'Memorial posted'
    else
      render :new
    end
  end

  def edit
    @memorial = Memorial.find(params[:id])
  end

  def update
    @memorial = Memorial.new(memorial_params)
    if @memorial.update_attributes(memorial_params)
      redirect_to :memorium_list, notice:'Memorial details updated'
    else
      render :edit
    end
  end

  def destroy
    @memorial = Memorial.find_by(params[:id])
    @memorial.destroy
    redirect_to :memorium_list, notice:"#{@memorial.name}'s memorial deleted"
  end

  def index
    @memorial = Memorial.new
    @memorials = Memorial.all.order("updated_at DESC")
  end

  def memorium_list
    @memorials = Memorial.all.order("updated_at DESC")
  end

  private

  def memorial_params
    params.require(:memorial).permit(:name, :bio, :avatar)
  end
end
