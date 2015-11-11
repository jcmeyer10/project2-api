class TapsController < OpenReadController
before_action :set_beer, only: [:update, :destroy]

  # GET /taps
  def index
    render json: Tap.all
  end

  # GET /taps/1
  def show
    @tap = Tap.find(params[:id])

    render json: @tap
  end

  # POST /taps
  def create
    @beer = taps.new(tap_params)
    @tap.save

    if @tap.save
      render json: @tap, status: :created, location: @tap
    else
      render json: @tap.errors, status: :unprocessable_entity
    end
  end

  # PATCH /taps/1
  def update
    if @tap.update(tap_params)
      head :no_content
    else
      render json: @tap.errors, status: :unprocessable_entity
    end
  end

  # DELETE /taps/1
  def destroy
    @tap.destroy

    head :no_content
  end

  def set_tap
    @tap = current_user.location.find(params[:id])
  end

  def tap_params
    params.require(:tap).permit(:location_id, :beer_id)
  end

  private :set_tap, :tap_params
end
