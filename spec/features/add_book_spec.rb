require 'rails_helper'

RSpec.describe 'Adding a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'New Book'
    fill_in 'Author', with: 'Author'
    fill_in 'Price', with: 25.99
    select '2024', from: 'book_published_date_1i'
    click_on 'Create Book'
    expect(page).to have_content('Book was successfully created.')
  end

  scenario 'invalid inputs' do
    visit new_book_path
    fill_in 'Title', with: '' 
    click_on 'Create Book'
    expect(page).to have_content("Title can't be blank")
  end
end

