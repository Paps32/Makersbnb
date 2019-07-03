feature 'add spaces to listing' do
scenario 'user can add a new space to their account' do
  visit('/makers/login')
  fill_in :email, with: "makers@gmail.com"
  fill_in :password, with: "12345"
  click_button 'Login'
  expect(page).to have_current_path('makers/spaces')
  click_button 'Add space'
  expect(page).to have_current_path('makers/spaces/new')
  fill_in :name, with: "beautiful resort"
  fill_in :description, with: "quality comfortable chair with massive screen"
  fill_in :price, with: "£620 per night"
  click_button 'List'
  expect(page).to have_current_path('makers/spaces')
  expect(page).to have_content('beautiful resort','quality comfortable chair with massive screen')
end
end
