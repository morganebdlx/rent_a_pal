class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @last_pals = Pal.last(3)

    @pals = Pal.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @pals.geocoded.map do |pal| {
        lat: pal.latitude,
        lng: pal.longitude
    }
    end
  end

end
