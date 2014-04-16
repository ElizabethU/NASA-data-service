class BodiesController < ApplicationController
  def index
    @bodies = Body.all
  end

  def show
    @body = Body.find_by(name: params[:name])
  end

  def show_for_given_year
    body = Body.find_by(name: params[:name])
    @year_of_data = body.years["#{params[:year]}"]

    render json: { params[:year].to_sym => @year_of_data }
  end
end
