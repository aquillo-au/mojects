class Api::V1::ProjectsController < ApplicationController
  def index
    @projects = Projects.all
    render json: @projects
  end
end
