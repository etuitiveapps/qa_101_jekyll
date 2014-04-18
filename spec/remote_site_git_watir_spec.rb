require 'spec_helper'
require 'watir-webdriver'
require 'navigation_spec.rb'

describe 'Test Qa-101 Navigation from localhost' do
  before(:each) do
    @browser = Watir::Browser.new :firefox
    @website = 'http://blackbaud-napoleonkernessant.github.io/qa_101_jekyll/'
    @browser.goto(@website)
  end

  after(:each) do
    @browser.close
  end
  # The intent of this test was not clear.
  # We had to refactor code to improve testing
  it 'click on each link in the menu bar' do
    expect(navigation_spec(@browser)).to eql(true)
  end

  it 'click on each link in the menu bar' do
    array_link_ids = %w(syllabus_link week_one_link week_two_link week_three_link index_link)

    expect(click_each_menu_link(@browser, array_link_ids)).to eql(true)
  end

end
