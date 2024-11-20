class PalsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @pals = Pal.all
  end

  def new
    @pal = Pal.new

  end

  def create
    @pal = Pal.new(pal_params)
    @pal.user = current_user
    @pal.save
    redirect_to pal_path(@pal)
  end

  def show
    @pal = Pal.find(params[:id])
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
