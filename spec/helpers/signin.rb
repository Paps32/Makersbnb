

def sign_in
  fill_in :email, with: "makers@gmail.com"
  fill_in :password, with: "12345"
  fill_in :username, with: "I_love_makers_19"
  click_button 'Sign up'
end
