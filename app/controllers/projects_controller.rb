class ProjectsController < ApplicationController


  def index
    @projects = Project.all
    render json: @projects
  end

  def show
    @project = Project.find(params[:id])
    render json: @project
  end

  def create
    # byebug
    @project = Project.create(project_params)
    # byebug
    if @project
    render json: @project
    else
      render json: {error: "project not created"}
    end
  end

  def update
    @project.update(project_params)
    if @project.valid?
        render json: @project
    else
        render json: {message: @project.errors.full_messages}
    end
   end
   

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    render json: {message: 'successful deletion'}
  end

  private

  def project_params
    params.permit(:name, :description, :user_id)
  end

end
