class Comment
  include Mongoid::Document
  field :text, type: String


  belongs_to :proposal
end
