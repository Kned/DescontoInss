# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CalculaDescontoService, type: :service do
  describe 'calcula_desconto' do
    context 'number is valid' do
      it 'calcula desconto corretamente' do
        expect(
          described_class.calcula_desconto(3000.00)
        ).to eq(281.62)
        expect(
          described_class.calcula_desconto(932.50)
        ).to eq(69.93)
        expect(
          described_class.calcula_desconto(1204.00)
        ).to eq(92.67)
      end
    end

    context 'number is invalid' do
      it 'generates error' do
        expect{
          described_class.calcula_desconto("invalid")
        }.to raise_error(StandardError)
      end
    end
    context 'number is a integer' do
      it 'calcula desconto corretamente' do
        expect(
          described_class.calcula_desconto(3000)
        ).to eq(281.62)
        expect(
          described_class.calcula_desconto(1204)
        ).to eq(92.67)
      end
    end
  end
end