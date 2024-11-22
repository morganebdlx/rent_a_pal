class BookingsController < ApplicationController
  def show
    # @pal = Pal.find(params[:id])
  end
  def new
    @booking = Booking.new
  end
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.pal = Pal.find(params[:pal_id])
    if @booking.save
    redirect_to dashboard_path
    else
      render "pals/show", status: :unprocessable_entity
    end
  end



  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
