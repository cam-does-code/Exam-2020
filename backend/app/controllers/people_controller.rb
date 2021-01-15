class PeopleController < ApplicationController
  
  def index
    @people = Person.all
  end

  def create
    @person = Person.new(firstname: params["firstname"],
                         lastname: params["lastname"])
    if @person.save
      head :ok
    else
      head :bad_request
    end
  end

  private
    def person_params
      params.permit("firstname", "lastname")
    end
end