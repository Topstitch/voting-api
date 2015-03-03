class CandidatesController < ApplicationController
  def index
    render json: Candidate.all
  end

  def show
    @voter = Voter.find(params[:id])
    render json: @voter
  end

  private def candidate_params
    params.require(:candidate).permit(:name, :party)
  end
end
