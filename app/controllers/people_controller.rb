class PeopleController < ApplicationController
  def index
    people = Person.all
    render json: people.as_json
  end
  def show
    people = Person.find_by(id: params[:id])
    render json: people.as_json
  end
end
