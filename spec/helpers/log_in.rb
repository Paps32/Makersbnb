
def log_in
  visit('/makers/login')
  fill_in :email, with: "makers@gmail.com"
  fill_in :password, with: "12345"
  click_button 'Log in'
end
