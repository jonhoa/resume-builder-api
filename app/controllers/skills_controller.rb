class SkillsController < ApplicationController
  def index
    skill = Skill.all
    render json: skill.as_json
  end

  def create
    skill = Skill.create(
      "name": params[:name]
    )
    skill.save
    render json: {message: "Skill sucessfully created"}
  end
end
