class LocationsController < ApplicationController

  before_action :set_location, only: [:update, :destroy]

  # GET /locations
  def index
    if current_user
      # if your logged in then you'll have a current_user
      # so, get that user's locations
      @locations = current_user.locations
    else
      # your not logged in get all locations
      @locations = Location.all
    end
    render json: @locations
  end

  # GET /locations/1
  def show
    @location = Location.find(params[:id])

    render json: @location
  end

  # POST /locations
  def create
    @location = current_user.locations.new(location_params)

    if @location.save
      render json: @location, status: :created, location: @location
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # PATCH /locations/1
  def update
    if @location.update(location_params)
      head :no_content
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # DELETE /locations/1
  def destroy
    @location.destroy

    head :no_content
  end

  def set_location
    @location = current_user.locations.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name, :address_num, :street, :city, :state)
  end

  private :set_location, :location_params
end
