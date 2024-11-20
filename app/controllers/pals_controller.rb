class PalsController < ApplicationController

  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :age, :city, :hobby])
    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :age, :city, :hobby])
  end

  def index
    @pals = Pal.all
  end

  def new
    @pal = Pal.new

  end

  def create
    @pal = Pal.new(pal_params)
    @pal.save
    redirect_to pal_path(@pal)
  end

  def show

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
    params.require(:pal).permit(:username, :age, :city, :hobby)
  end

end
