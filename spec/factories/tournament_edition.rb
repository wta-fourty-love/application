# frozen_string_literal: true

FactoryBot.define do
  factory :tournament_edition do
    starts_at { Date.current + 1.month }
    ends_at { Date.current + 2.months }
    seasion_id { create(:season).id }
    tournament_id { create(:tournament).id }
  end
end
