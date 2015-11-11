class BeersController < OpenReadController
before_action :set_beer, only: [:update, :destroy]

  # GET /beers
  def index
    @beers = Beer.all

    render json: @beers
  end

  # GET /beers/1
  def show
    @beer = Beer.find(params[:id])

    render json: @beer
  end

  # POST /beers
  def create
    @beer = current_user.beers.new(beer_params)
    @beer.save

    if @beer.save
      render json: @beer, status: :created, location: @beer
    else
      render json: @beer.errors, status: :unprocessable_entity
    end
  end

  # PATCH /beers/1
  def update
    if @beer.update(beer_params)
      head :no_content
    else
      render json: @beer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /beers/1
  def destroy
    @beer.destroy

    head :no_content
  end

  def set_beer
    @beer = current_user.beers.find(params[:id])
  end

  def beer_params
    params.require(:beer).permit(:name, :brewery, :style)
  end

  private :set_beer, :beer_params
end
