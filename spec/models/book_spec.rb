require 'rails_helper'

RSpec.describe Book, type: :model do
  context 'with valid attributes' do
    it 'is valid' do
      book = Book.new(title: "Sample Book", author: "Author", price: 19.99, published_date: Date.today)
      expect(book).to be_valid
    end
  end

  context 'with invalid attributes' do
    it 'is not valid without a title' do
      book = Book.new(author: "Author", price: 19.99, published_date: Date.today)
      expect(book).not_to be_valid
    end
  end
end

