class TeamsController < ApplicationController
  def index
    @teams = Team.all.order("name ASC")
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    if @team.update_attributes(team_params)
      redirect_to root_url, notice: "Team updated!"
    else
      render :edit
    end
  end

  private
  def team_params
    params.require(:team).permit(:name, :division, :url)
  end
end
