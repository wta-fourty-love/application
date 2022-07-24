# frozen_string_literal: true

RSpec.describe Seasons::Commands::Contracts::AddContract do
  subject { described_class.new.call(params) }

  describe '#validate_with' do
    context 'proper params' do
      let!(:params) { { year: 2022 } }

      it 'returns success result' do
        expect(subject.success?).to eq(true)
      end
    end

    context 'missing params' do
      let!(:params) { { year: nil } }

      it 'returns failure result with errors' do
        expect(subject.success?).to eq(false)
        expect(subject.errors.to_h).to eq({ year: ['must be filled'] })
      end
    end

    context 'missing keys' do
      let!(:params) { {} }

      it 'returns failure result with errors' do
        expect(subject.success?).to eq(false)
        expect(subject.errors.to_h).to eq({ year: ['is missing'] })
      end
    end

    context 'provided year already present' do
      let!(:params) { { year: 2022 } }
      before { allow_any_instance_of(described_class).to receive(:all_seasons_years).and_return([2022]) }

      it 'returns failure result with errors' do
        expect(subject.success?).to eq(false)
        expect(subject.errors.to_h).to eq({ year: ['must_be_unique'] })
      end
    end

    context 'provided year is in the future' do
      let!(:params) { { year: 2023 } }

      it 'returns failure result with errors' do
        expect(subject.success?).to eq(false)
        expect(subject.errors.to_h).to eq({ year: ['cannot_be_in_future'] })
      end
    end
  end
end
