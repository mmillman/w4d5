class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def create
    @project = Project.new(params[:project])
    @project.save

    redirect_to project_url(@project)
  end

  def new
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
  end

  def destroy
    @project = Project.find(params[:id]).destroy

    redirect_to projects_url
  end
end
