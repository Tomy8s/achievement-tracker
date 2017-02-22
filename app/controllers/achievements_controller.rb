class AchievementsController < ApplicationController

  def create
    @achievement = Achievement.create(achievement_params)
    redirect_to root_path
  end

  def new
    @achievement = Achievement.new
  end

  def index
    @achievements = Achievement.all
    @endorsement = Endorsement.new
  end

  def show
  end

  private
  def achievement_params
    params.require(:achievement).permit(:name, :team, :headline, :description, :categories, :date)
  end
end
