require 'spec_helper'
require 'watir-webdriver'

describe 'Test Qa-101 Navigation from localhost' do
  before(:each) do
    @browser = Watir::Browser.new :firefox
    @website = 'http://0.0.0.0:4000'
    @browser.goto(@website)
  end

  after(:each) do
    @browser.close
  end

  it 'is able to navigate to the syllabus page' do
    @browser.link(:id, 'syllabus_link').click
  end

  it 'is able to navigate to the week 1 page' do
    @browser.link(:id, 'week_one_link').click
  end

  it 'is able to navigate to the week 2 page' do
    @browser.link(:id, 'week_two_link').click
  end

  it 'is able to navigate to the week 3 page' do
    @browser.link(:id, 'week_three_link').click
  end

  it 'is able to navigate to the week 4 page' do
    @browser.link(:id, 'week_four_link').click
  end

  it 'is able to navigate to the index page' do
    @browser.link(:id, 'index_link').click
  end
end
