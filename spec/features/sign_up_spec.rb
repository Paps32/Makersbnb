feature 'index page' do
  scenario 'create a index page for the app' do
    visit('/')
    expect(page).to have_content 'MakersBnB'
  end
end

feature 'access to MakersBnB' do
    scenario 'sign up' do
    sign_up
    expect(page).to have_current_path('/makers/login')
  end

  scenario 'log in' do
    sign_up
    expect(page).to have_current_path('/makers/login')
    log_in
    user = User.first(:email => 'makers@gmail.com')
    expect(page).to have_current_path("/makers/spaces/#{user.id}")
  end
end
