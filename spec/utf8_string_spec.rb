require 'spec_helper'

module UTF8Cleaner
  describe UTF8String do
    let(:utf8_string) { UTF8String.new(string) }

    describe '#cleaned' do
      let(:result) { utf8_string.cleaned }

      context 'when string is encoded incorrectly' do
        let(:string) { "data\xed\xe5\xed\xe0" }

        it 'removes invalid characters' do
          expect(result).to eq('data')
        end
      end

      context 'when string is encoded correctly' do
        let(:string) { 'a valid utf-8 string' }

        it 'returns the string' do
          expect(result).to eq(string)
        end
      end
    end
  end
end
