class PalsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def home
    @pals = Pal.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @pals.geocoded.map do |pal| {
        lat: pal.latitude,
        lng: pal.longitude
    }
    end
  end

  def index
    @pals = Pal.all
    if params[:query].present?
      @pals = @pals.joins(:user).where("pals.city ILIKE ? OR users.hobby ILIKE ?", params[:query], params[:query])

    end
  end

  def new
    @pal = Pal.new
  end

  def create
    @pal = Pal.new(pal_params)
    @pal.user = current_user
    @pal.save
    redirect_to root_path
  end

  def show
    @pal = Pal.find(params[:id])
    @booking = Booking.new
  end

  def edit
    @pal = Pal.find(params[:id])
  end

  def update
    @pal = Pal.find(params[:id])
    @pal.update(pal_params)
    redirect_to pal_path(@pal)
  end

  def destroy
    @pal = Pal.find(params[:id])
    @pal.destroy
    redirect_to pals_path, status: :see_other
  end

  private

  def pal_params
    params.require(:pal).permit(:price)
  end

end
