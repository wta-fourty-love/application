# frozen_string_literal: true

class Country < ActiveRecord::Base
  has_many :players
  has_many :tournaments
end
