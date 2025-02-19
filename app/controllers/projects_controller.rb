class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
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

  def edit
    @project = current_user.projects.friendly.find(params[:id])
  end

  def update
    @project = current_user.projects.friendly.find(params[:id])
    if @project.update(permitted_params)
      redirect_to @project, notice: "Project updated with success"
    else
      render :edit
    end
  end

  private

  def permitted_params
    params.expect(project: [ :name, :description, :status ])
  end
end
