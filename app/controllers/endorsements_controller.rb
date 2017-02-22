class EndorsementsController < ApplicationController


  def create
    p params
    @achievement = Achievement.find(params[:achievement_id])
    @achievement.endorsement.create(endorsement_params)
    redirect_to root_path
  end

  private

  def endorsement_params
    params.require(:endorsement).permit(:name, :comment, :achievement_id)
  end

end
