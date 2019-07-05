feature 'edit spaces from listing' do
    scenario 'user can edit a exisiting space on their account' do
  
      sign_up
      log_in
      user = User.first(:email => 'makers@gmail.com')
      expect(page).to have_current_path("/makers/spaces/#{user.id}")
  
      # add & list a new space
      add_space('wedge room', 'bit of a hard floor', '20')
      expect(page).to have_content('wedge room')
      expect(page).to have_content('bit of a hard floor')
      expect(page).to have_content('20')
      click_button('Edit')
      expect(page).to have_current_path("/makers/spaces/edit")
      fill_in :name, with: " at makers"
      fill_in :description, with: " really cheap"
      fill_in :price, with: "1"
      click_button('Confirm')
      expect(page).to have_current_path("/makers/spaces/:id")
      expect(page).to have_content('wedge room at makers')
      expect(page).to have_content('bit of a hard floor really cheap')
      expect(page).to have_content('201')
    end
end

