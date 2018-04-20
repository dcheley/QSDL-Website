class PostsController < ApplicationController
  def create
    @team = Team.find_by(id: params[:team_id])
    @post = Post.new(post_params)
    @bar = Bar.find_by(id: @team.bar_id)
    @posts = Post.where(team_id: @team.id)
    respond_to do |format|
      if @post.save
        format.html { redirect_to team_url(@team), notice:"Comment posted" }
        format.json { render json: @team, status: :created, location: @team }
      else
        format.html { render 'teams/show' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :author, :team_id, :comment, :avatar)
  end
end
