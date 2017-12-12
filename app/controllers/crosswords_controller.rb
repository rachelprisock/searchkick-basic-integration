class CrosswordsController < ApplicationController
  def index
    @words = Crossword.search(params[:query] || "*", fields: [:name], match: :word_start, operator: "and")
  end

  def autocomplete
    render json: Crossword.search(params[:query], {
        fields: [:name],
        match: :word_start,
        limit: 10,
        load: false,
        misspellings: {below: 3}
    }).map(&:name)
  end
end