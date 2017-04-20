require('capybara/rspec')
require("./app")
Capybara.app = Sinatra::Application
set(:show_exceptions,false)

describe('Change return path', {:type => :feature}) do
  it('will take a number and give the change of that number')do
    visit('/')
    fill_in('input', :with => 10)
    click_button('submit')
    expect(page).to have_content("dime")
  end
end
