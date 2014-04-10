class BodiesController < ApplicationController
  def index
    @bodies = Body.all
  end

  def show
    @body = Body.find_by(name: params[:name])
  end
end
