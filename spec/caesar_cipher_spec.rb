# frozen_string_literal: true

require './lib/caesar_cipher'

RSpec.describe CaesarCipher do
  subject { CaesarCipher.new }

  describe '#translate' do
    it 'works with positive shift' do
      expect(subject.translate('Zz', 5)).to eq 'Ee'
    end

    it 'works with negative shift' do
      expect(subject.translate('Aa', -5)).to eq 'Vv'
    end

    it 'works with punctuation' do
      expect(subject.translate('Hello,this.', 5)).to eq 'Mjqqt,ymnx.'
    end

    it 'works with spaces' do
      expect(subject.translate('Hello this', 5)).to eq 'Mjqqt ymnx'
    end

    it 'works with empty message' do
      expect(subject.translate('', 10)).to eq ''
    end

    it 'works with shift greater than 26' do
      expect(subject.translate('Hello, World!', 75)).to eq 'Ebiil, Tloia!'
    end

    it 'works with shift smaller than -26' do
      expect(subject.translate('Hello, World!', -55)).to eq 'Ebiil, Tloia!'
    end
  end
end
