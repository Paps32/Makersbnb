feature 'index page' do
  scenario 'create a index page for the app' do
    visit('/')
    expect(page).to have_content 'MakersBnB'
  end
end

feature 'access to MakersBnB' do
  scenario 'sign up' do
    visit('/makers/sign-up')
    fill_in :email, with: "makers@gmail.com"
    fill_in :password, with: "12345"
    fill_in :username, with: "I_love_makers_19"
    click_button 'Sign up'
    expect(page).to have_current_path('/makers/login')
  end

  scenario 'log in' do
    visit('/makers/sign-up')
    fill_in :email, with: "makers@gmail.com"
    fill_in :password, with: "12345"
    click_button 'Sign up'
    expect(page).to have_current_path('/makers/login')
    fill_in :email, with: "makers@gmail.com"
    fill_in :password, with: "12345"
    click_button 'Log in'
    user = User.first(:email => 'makers@gmail.com')
    expect(page).to have_current_path("/makers/spaces/#{user.id}")
  end
end
