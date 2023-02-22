class PeopleController < ApplicationController
  def index
    people = Person.order(:id)
    render json: people.as_json
  end

  def show
    people = Person.find_by(id: params[:id])
    render json: people.as_json
  end

  def update
    people = Person.find_by(id: params[:id])
    people.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone: params[:phone],
      title: params[:title],
      github: params[:github],
      linkedin: params[:linkedin],
      location: params[:location]
    )
    render json: {message: "successully saved changes"}
  end
  
  def create
    people = Person.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone: params[:phone],
      title: params[:title],
      github: params[:github],
      linkedin: params[:linkedin],
      location: params[:location]
    )
    people.save
    render json: {message: "successully saved changes"}
  end
end
