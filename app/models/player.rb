# frozen_string_literal: true

class Player < ActiveRecord::Base
  belongs_to :country
end
