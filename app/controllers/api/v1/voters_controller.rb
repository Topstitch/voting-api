class Api::V1::VotersController < ApplicationController

  def show
    @voter = Voter.find(voter_params)
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
    params.require(:voter).permit(:name, :party)
  end
end
