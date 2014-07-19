feature "As a user, I want to" do

  scenario "visit the page" do
    visit '/'
    expect(body).to have_content('Graphical editor')
  end

end
