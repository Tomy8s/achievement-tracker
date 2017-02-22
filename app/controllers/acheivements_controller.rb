class AcheivementsController < ApplicationController

  def create
    @achievement = Achievement.create(achievement_params)
  end

  def new
    @achievement = Achievement.new
  end

  def index
  end

  def show
  end

  private
  def achievement_params
    params.require(:achievement).permit(:name, :team, :headline, :description, :categories, :date)
  end
end
