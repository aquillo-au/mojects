class HomeController < ApplicationController
  def index; end

  def create
    render json: { message: "Hi i'm the API" }
  end
end
