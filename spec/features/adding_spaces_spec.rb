feature 'add spaces to listing' do
  scenario 'user can add a new space to their account' do

    sign_up
    log_in
    user = User.first(:email => 'makers@gmail.com')
    expect(page).to have_current_path("/makers/spaces/#{user.id}")



    # add & list a new space
    expect(page).to have_current_path('/makers/spaces/new')
    add_space
    expect(page).to have_current_path("/makers/spaces/#{user.id}")
    expect(page).to have_content('beautiful resort', 'quality comfortable chair with massive screen')
  end
end
