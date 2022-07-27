# frozen_string_literal: true

FactoryBot.define do
  factory :tournament do
    name { 'Veri big tournament' }
    city { 'Veri best city' }
    editions_count { 0 }
    country_id { create(:country).id }
  end
end
