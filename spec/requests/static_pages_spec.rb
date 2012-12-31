require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content 'Sample App'" do
      visit root_path 
      page.should have_selector('h1', :text => 'Sample App')
    end
   
    it "should have the right title" do
      visit root_path 
      page.should have_selector('title',
                            :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custome page title" do
      visit root_path
      visit.should_not have_selector('title', text: '| Home')
    end
  end

  describe "Help Page" do
    it "should have the content 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit help_path
      page.should have_selector('title',
                           :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About Page" do
    it "should have the content 'About Us'" do
      visit about_path 
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the tite 'About Us'" do
      visit about_path
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end

  describe "Contact page" do
    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end
    
    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title',
              text: "Ruby on Rails Tutorial Sample App | Contact")
    end
  end

end
