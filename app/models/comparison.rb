class Comparison
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongo::Voteable
  voteable self, :up => +1, :down => -1
  field :title, :type => String
  field :description, :type => String
  embeds_many :comments
  embeds_many :opponents
end
