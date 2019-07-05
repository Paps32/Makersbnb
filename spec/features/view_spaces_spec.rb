feature 'view a list of spaces' do
  scenario 'user can view all the available listings' do
    # login as user
    sign_up
    log_in
    user = User.first(:email => 'makers@gmail.com')

    add_space('wedge room', 'bit of a hard floor', '20')
    add_space('tiny room', 'not really worth it', '40')
    add_space('medium room', 'this one is just right', '30')

    expect(page).to have_current_path("/makers/spaces/#{user.id}")
  end
end
