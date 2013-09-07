require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the right title" do
      visit root_path
      page.should have_selector('title', :text => ' | Home')
    end
  end
end
