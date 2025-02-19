class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    permitted_params = params.expect(project: [ :name, :description, :status ])
    @project = Project.new(permitted_params)
    @project.user = current_user
    @project.save
    if @project.valid?
      redirect_to @project, notice: "Project created with success"
    else
      render :new
    end
  end

  def show
    @project = Project.friendly.find(params[:id])
  end
end
