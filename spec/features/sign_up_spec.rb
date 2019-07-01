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
    expect(page).to have_content 'Thank you for signing up'
  end
end
