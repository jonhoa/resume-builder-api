class ExperiencesController < ApplicationController
  def index
    experiences = Experience.order(:id)
    render json: experiences.as_json
  end

  def show
    experience = Experience.find_by(id: params[:id])
    render json: experience.as_json
  end

  def create
    experience = Experience.create(
      start: params[:start],
      end: params[:end],
      company: params[:company],
      job: params[:job],
      details: params[:details]
    )
    experience.save
    render json: {message: "Successfully created"}
  end

  def update
    experience = Experience.find_by(id: params[:id])
    experience.update(
      start: params[:start],
      end: params[:end],
      company: params[:company],
      job: params[:job],
      details: params[:details]
    )
    experience.save
    render json: experience.as_json
  end
end
