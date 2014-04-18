require 'spec_helper'
require 'watir-webdriver'

def navigation_spec(browser)
  browser.link(:id, 'syllabus_link').click
  browser.link(:id, 'week_one_link').click
  browser.link(:id, 'week_two_link').click
  browser.link(:id, 'week_three_link').click
  browser.link(:id, 'index_link').click
  true
end

def click_each_menu_link(browser, array_link_ids)
  array_link_ids.each do |link_id|
    browser.link(:id, link_id).click
  end
  true
end
