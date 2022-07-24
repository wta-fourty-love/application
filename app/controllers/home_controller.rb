# frozen_string_literal: true

class HomeController < ApplicationController
  # rubocop:disable Metrics/MethodLength, Naming/VariableNumber
  def index
    # TODO: Delete once mock data is not needed. THIS IS JUST FOR TESTING
    @matches = [
      {
        players: [
          {
            name: 'Female Nadal',
            stats: { some_stat_1: '32%', some_stat_2: '45%' },
            score: 1
          },
          {
            name: 'Female Hurkacz',
            stats: { some_stat_1: '62%', some_stat_2: '89%' },
            score: 2
          }
        ]
      }
    ]

    @live_matches = [
      {
        players: [
          {
            name: 'Swiatek',
            score: 1
          },
          {
            name: 'Sharapova',
            score: 0
          }
        ]
      }
    ]
  end
  # rubocop:enable Metrics/MethodLength, Naming/VariableNumber
end
