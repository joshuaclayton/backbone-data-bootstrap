require 'spec_helper'

feature 'Viewing the homepage' do
  scenario 'displays a welcome message' do
    view_the_homepage
    user_sees_welcome_message
  end

  def view_the_homepage
    visit root_path
  end

  def user_sees_welcome_message
    expect(page).to have_css 'h1[data-role=welcome-message]'
  end
end
