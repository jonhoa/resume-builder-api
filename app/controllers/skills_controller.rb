class SkillsController < ApplicationController
  def index
    skill = Skill.all
    render json: skill.as_json
  end
end
