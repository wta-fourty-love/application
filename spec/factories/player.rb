# frozen_string_literal: true

FactoryBot.define do
  factory :player do
    first_name { 'Iga' }
    last_name { 'Top' }
    born_on { Date.parse('31.05.2001') }
    place_of_birth { 'Warsaw' }
    height { 1.76 }
    active { true }
    wikipedia_url { 'https://en.wikipedia.org/wiki/Iga_Top' }
    country { create(:country) }
  end
end
