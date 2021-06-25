require 'spec_helper' do
  feature 'playing a game' do
    befor do
      visit '/'
      fill_in :name, with: Simon
      click_button 'submit'
    end
    scenario 'see the shape options' do
      expect(page).to have_button 'rock'
      expect(page).to have_button 'paper'
      expect(page).to have_button 'scisssors'
    end
    scenario 'choose a shape' do
      click_button 'rock'
      expect(page).to have_content 'you chose rock'
    end
end
