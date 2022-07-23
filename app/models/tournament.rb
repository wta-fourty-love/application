# frozen_string_literal: true

class Tournament < ActiveRecord::Base
  belongs_to :country
end
