class DashboardsController < ApplicationController
  def index
    @bookings = current_user.bookings.joins(:pal)
    @palbookings = current_user.pal.bookings.joins(:user)
  end
end
