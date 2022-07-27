# frozen_string_literal: true

class Season < ActiveRecord::Base
  has_many :tournament_editions
end
