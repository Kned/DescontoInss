# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CalculaDescontoService, type: :service do
  describe 'calcula_desconto' do
      it 'calcula desconto corretamente' do
        expect(
          described_class.calcula_desconto(3000.00)
        ).to eq(281.63)
        expect(
          described_class.calcula_desconto(932.50)
        ).to eq(69.94)
        expect(
          described_class.calcula_desconto(1204.00)
        ).to eq(92.68)
      end
  end
end