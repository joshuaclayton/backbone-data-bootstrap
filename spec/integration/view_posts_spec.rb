require 'spec_helper'

feature 'Viewing posts', js: true do
  include ActionController::RecordIdentifier

  scenario 'displays post information' do
    posts = create_list :post, 3
    view_posts
    user_sees_posts posts
  end

  def view_posts
    visit posts_path
  end

  def user_sees_posts(posts)
    posts.each do |post|
      within "article##{dom_id(post)}" do
        expect(page).to have_css 'h2', text: post.title
        expect(page).to have_css '.author', text: post.user.name
        expect(page).to have_css 'div', text: post.body
      end
    end
  end
end
