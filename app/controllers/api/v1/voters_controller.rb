class Api::V1::VotersController < ApplicationController
  before_action :restrict_access

  def show
    @voter = Voter.find(params[:id])
    render json: @voter
  end

  def create
    @voter = Voter.new(voter_params)
    if @voter.save
      ApiKey.create(voter: @voter )
      render json: {voter: @voter, access_token: @voter.api_key.access_token}
    else
      render json: "Invalid parameters"
    end
  end

  def update
  end

  def index
    render json: Voter.all
  end

  private def voter_params
    params.require(:voter).permit(:name, :party, :access_token)
  end

  private def restrict_access
    @voter = Voter.find(params[:id])
    api_key = ApiKey.find_by_access_token(params[:access_token])
    head :unauthorized if (api_key.nil?) || (api_key.voter_id != @voter.id)
  end
end
