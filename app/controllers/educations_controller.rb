class EducationsController < ApplicationController
  def index
    educations = Education.order(:id)
    render json: educations.as_json
  end

  def show
    education = Education.find_by(id: params[:id])
    render json: education.as_json
  end

  def create
    education = Education.create(
      start: params[:start],
      end: params[:end],
      university: params[:university],
      degree: params[:degree]
    )
    education.save
    render json: {message: "Successfully created"}
  end

  def update
    education = Education.find_by(id: params[:id])
    education.update(
      start: params[:start],
      end: params[:end],
      university: params[:university],
      degree: params[:degree]
    )
    education.save  
    render json: education.as_json
  end
end
