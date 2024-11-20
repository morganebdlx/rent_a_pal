class PagesController < ApplicationController
  def home
    @last_pals = Pal.last(3)
  end
end
