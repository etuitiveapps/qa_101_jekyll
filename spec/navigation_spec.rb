require 'spec_helper'
require 'watir-webdriver'

def click_each_menu_link(browser, array_link_ids)
  array_link_ids.each do |link_id|
    browser.link(:id, link_id).click
  end
  true
end
