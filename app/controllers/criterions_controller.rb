class CriterionsController < ApplicationController
before_action :find_criterion, only: [:update, :edit, :destroy, :show]

  def new
    @criterion = Criterion.new
  end

  def edit
  end

  def create
    @criterion = Criterion.new(criterion_params)
    if @criterion.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    @criterion.update(criterion_params)
  end

  def destroy
    @criterion.destroy
    redirect_to root_path
  end

  private
    def find_criterion
      @criterion = Criterion.find(params[:id])
    end

    def criterion_params
      params.require(:criterion).permit(:name, :color)
    end
end
