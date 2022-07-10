FactoryBot.define do
  factory :season do
    year { Date.current.year }
  end
end