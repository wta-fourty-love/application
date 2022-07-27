# frozen_string_literal: true

RSpec.describe Seasons::Commands::Create do
  subject { described_class.new(params).call }

  describe '#call' do
    context 'valid params' do
      let!(:params) { { year: 2022 } }

      it 'persists season' do
        expect { subject }.to change { Season.count }.by(1)
      end

      it 'adds proper attributes' do
        subject
        expect(Season.last).to have_attributes(year: 2022)
      end
    end

    context 'invalid params' do
      let!(:params) { {} }

      it 'raises validation exception' do
        expect { subject }.to raise_exception(Exceptions::ValidationError)
      end
    end
  end
end
