# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Proponente, type: :model do
  describe 'total_available' do
    
    context 'when dont have any borrowed books' do
      let(:proponente1) { create(:proponente) }
      it 'return total books registered' do
        debugger
        proponente1
        
        expect(
          Proponente.count
        ).to eq(1)
      end
    end
    context 'when has a single book borrowed' do
      let(:borrowed_book) { create(:borrowed_book, book: create(:book, isbn: "12")) }
      it 'return total books registered less one' do
        expect(
          borrowed_book.book.total_available
        ).to eq(9)
      end
    end
  end
end