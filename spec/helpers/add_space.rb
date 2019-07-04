def add_space
  click_button 'Add space'
  fill_in :name, with: "beautiful resort"
  fill_in :description, with: "quality comfortable chair with massive screen"
  fill_in :price, with: "£620 per night"
  click_button 'List'
end
