class CommunitiesController < ApplicationController
  before_action :authenticate_user! , only: [:new , :create]
  def new
    @community = Community.new
  end

  def create
    @community = Community.new(community_params)

    if @community.save
      redirect_to @community
    else 
      render :new
    end
  end
  def index
    @community = Community.all
  end

  def show 
    @community = Community.find_by_id(params[:id])
  end

  private

  def community_params 
    params.require(:community).permit(:name , :description)
  end
end
