class CountriesController < ApplicationController
  def map
    @countries     = Country.all
    @posted_codes  = Country.joins(:country_posts).distinct.pluck(:code)
    @code_to_name  = Country.pluck(:code, :name).to_h  # ← ホバー用
  end
  def index
  end

end
