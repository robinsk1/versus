class HomeController < ApplicationController
  def index
    @comparisons = Comparison.all
  end
end
