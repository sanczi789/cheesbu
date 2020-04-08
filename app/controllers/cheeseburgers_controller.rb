class CheeseburgersController < ApplicationController
  def index
    @cheeseburgers = Cheeseburger.all.order(date: :desc)
    @cheeseburger = Cheeseburger.new
  end

  def create
    @cheeseburger = Cheeseburger.new(resource_params)

    if @cheeseburger.save
      redirect_to cheeseburgers_path
    else
      render "new"
    end
  end

  private

  def resource_params
    params.require(:cheeseburger)
      .permit(:date, :country, :location, :height, :diameter,
              :taste, :additional_comment, :rating, :reviewer)
  end
end
