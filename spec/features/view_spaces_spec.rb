feature 'view a list of spaces' do 
    xscenario 'user can view all the available listings' do
        visit('/makers/spaces')
        Space.all
        expect(page).to have_content()