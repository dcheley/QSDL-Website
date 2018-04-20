class MemorialsController < ApplicationController
  def create
    @memorial = Memorial.new(memorial_params)
    @memorials = Memorial.all
    respond_to do |format|
      if @memorial.save
        format.html { redirect_to memorials_url, notice:'Memorial posted' }
        format.json { render json: @memorial, status: :created, location: @memorial }
      else
        format.html { render :index }
        format.json { rendor json: @memorial.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @memorial = Memorial.new(memorial_params)
    @memorials = Memorial.all
    respond_to do |format|
      if @memorial.update_attributes(memorial_params)
        format.html { redirect_to memorials_url, notice:'Memorial details updated' }
        format.json { render json: @memorial, status: :created, location: @memorial }
      else
        format.html { render :index }
        format.json { rendor json: @memorial.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @memorial = Memorial.find_by(params[:id])
    @memorials = Memorial.all
    respond_to do |format|
      @memorial.destroy
      format.html { redirect_to memorials_url, notice:'Memorial deleted' }
      format.json { render json: @memorial, status: :created, location: @memorial }
    end
  end

  def index
    @memorial = Memorial.new
    @memorials = Memorial.all
  end

  private

  def memorial_params
    params.require(:memorial).permit(:name, :bio, :avatar)
  end
end
