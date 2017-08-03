feature 'click about link on home page' do
  let(:user) { FactoryGirl.create(:user) }

  before do
    log_in(user)
  end

  scenario 'link sends to about page' do
    visit root_path

    click_link 'About'

    expect(page).to have_content 'About Page'
  end
end
