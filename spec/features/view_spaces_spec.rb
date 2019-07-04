feature 'view a list of spaces' do
  scenario 'user can view all the available listings' do
    #login as user
    visit()




    Space.all
    expect(page).to have_content()
  end
end
