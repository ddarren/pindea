class SiteSuggestionsController < ApplicationController
  def create
    @site_suggestion = SiteSuggestion.new(params[:site_suggestion])
    @site_suggestion.save

  end
end
