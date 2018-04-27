class PostsController < ApplicationController

  def create
    @post = Post.new(post_params)
    @team = Team.find(params[:team_id])
    respond_to do |format|
      if @post.save
        format.html { redirect_to edit_team_url(@team), notice:"Comment posted" }
        format.json { render json: @team, status: :created, location: @team }
      else
        format.html { render "teams/edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @post = Post.find(params[:id])
    @team = Team.find(@post.team_id)
  end

  def update
    @post = Post.find(params[:id])
    @team = Team.find(@post.team_id)
    respond_to do |format|
      if @post.update_attributes(post_params)
        format.html { redirect_to edit_team_url(@team), notice:"Comment updated" }
        format.json { render json: @team, status: :created, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @team = Team.find(@post.team_id)
    @post.destroy
    redirect_to edit_team_url(@team), notice: "#{@post.title} deleted!"
  end

  private

  def post_params
    params.require(:post).permit(:title, :author, :team_id, :comment, :avatar)
  end
end
