class ExperiencesController < ApplicationController
  def index
    experiences = Experience.order(:id)
    render json: experiences.as_json
  end

  def show
    experience = Experience.find_by(id: params[:id])
    render json: experience.as_json
  end
end
