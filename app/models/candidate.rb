class Candidate < ActiveRecord::Base
  has_many :votes


  def as_json(options = {})
    {name:self.name,  vote_count:self.votes.count}
  end
end
