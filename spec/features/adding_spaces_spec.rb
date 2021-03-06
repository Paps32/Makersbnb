feature 'add spaces to listing' do
  scenario 'user can add a new space to their account' do

    sign_up
    log_in
    user = User.first(:email => 'makers@gmail.com')
    expect(page).to have_current_path("/makers/spaces/#{user.id}")

    # add & list a new space
    add_space('wedge room', 'bit of a hard floor', '20')
    expect(page).to have_current_path("/makers/spaces/#{user.id}")
    expect(page).to have_content('wedge room')
    expect(page).to have_content('bit of a hard floor')
    expect(page).to have_content('20')
  end
end
