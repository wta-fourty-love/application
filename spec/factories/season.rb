# frozen_string_literal: true

FactoryBot.define do
  factory :season do
    year { Date.current.year }
  end
end
