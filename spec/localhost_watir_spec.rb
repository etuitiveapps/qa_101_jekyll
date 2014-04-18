require 'spec_helper'
require 'watir'
include Watir
require 'watir-webdriver'

describe 'Test Qa-101 from localhost' do
  before(:each) do
    @browser = Browser.new :firefox
    @website = 'http://0.0.0.0:4000'
  end

  after(:each) do
    @browser.close
  end
  it 'is able to navigate to the syllabus page' do
    @browser.goto(@website)
  end

end