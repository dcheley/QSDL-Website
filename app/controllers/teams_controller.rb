class TeamsController < ApplicationController
  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)

    if @team.save
      redirect_to "/teams/team_list", notice: "#{@team.name} created!"
    else
      render :new
    end
  end

  def index
    @teams = Team.all.order("name ASC")
  end

  def team_list
    @teams = Team.all.order("name ASC")
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    if @team.update_attributes(team_params)
      redirect_to "/teams/team_list", notice: "Team updated!"
    else
      render :edit
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to "/teams/team_list", notice: "Team deleted!"
  end

  private
  def team_params
    params.require(:team).permit(:name, :division, :url)
  end
end
