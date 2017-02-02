class TeamsController < ApplicationController
  def index
    @teams = Team.all.order("name ASC")
  end

  def edit
    @team = Team.find(team_params)
  end

  private
  def team_params
    params.require(:team).permit(:name, :division, :url)
  end
end
