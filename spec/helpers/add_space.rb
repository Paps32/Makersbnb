def add_space(name, description, price)
  click_button 'Add space'
  p page.current_path
  fill_in :name, with: name
  fill_in :description, with: description
  fill_in :price, with: price
  click_button 'List'
end