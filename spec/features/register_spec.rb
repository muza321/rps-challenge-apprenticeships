require 'spec_helper'
feature 'registering name' do
  scenario 'registering name' do
  visit '/'
  fill_in :name, with:'Muza'
  click_button 'submit'
  expect(page).to have_content 'page'
 end
end
