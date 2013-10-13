class Proposal
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Voteable
  
  voteable self, :up => +1, :down => -1

  has_many :comments

end
