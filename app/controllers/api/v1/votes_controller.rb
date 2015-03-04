class Api::V1::VotesController < ApplicationController

  def index
    render json: Candidate.all
  end

  def show
    @vote = Vote.find(params[:id])
    render json: @vote
  end

  def create
    @vote = Vote.new(vote_params)

    if @vote.save
      render json: @vote
    else
      render json: "Invalid parameters"
    end
  end

  private def vote_params
    params.require(:vote).permit(:voter_id, :candidate_id)
  end
  
end
