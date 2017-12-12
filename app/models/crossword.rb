class Crossword < ActiveRecord::Base
  searchkick word_start: [:name]
end

