class ProjectsController < ApplicationController
  def index
    projects = Project.order(:id)
    render json: projects.as_json
  end

  def show
    project = Project.find_by(id: params[:id])
    render json: project.as_json
  end

  def create
    project = Project.create(
      name: params[:name],
      description: params[:description],
      url: params[:url]
    )
    project.save
    render json: {message: "Successfully saved!"}
  end

  def update
    project = Project.find_by(id: params[:id])
    project.update(
      name: params[:name],
      description: params[:description],
      url: params[:url]
    )
    project.save
    render json: {message: "Successfully saved!"}
  end
end
