class ChartsController < ApplicationController
  def index
    @countries = Country.all
  end
end
