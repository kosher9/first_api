class V1::PeopleController < ApplicationController
  def index
    render json: Person.all
  end

  def show
    person = Person.where(id: params[:id])
    person.empty? do
      render json: { status: 404, data: person }
    end
    render json: { status: 200, data: person }
  end

  def full_info
    people = Person.all
    people.empty? do
      render json: { status: 404, data: people }
    end
    render json: { status: 200, data: people.as_json(include: :pets) }
  end

  def full_info_owner
    person = Person.where(id: params[:id])
    person.empty? do
      render json: { status: 404, data: person }
    end
    render json: { status: 200, data: person.as_json(include: :pets) }
  end
end
