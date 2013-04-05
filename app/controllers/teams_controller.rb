class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def create
    @team = Team.new(params[:project])
    @team.save

    redirect_to project_url(@team)
  end

  def new
    @team = Team.new
  end

  def show
    @team = Team.find(params[:id])
  end

  def destroy
    @team = Team.find(params[:id]).destroy

    redirect_to projects_url
  end
end
