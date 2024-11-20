class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @last_pals = Pal.last(3)
  end
end
