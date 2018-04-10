require 'rails_helper'

context 'PostsController' do
  before :each do
    @user = FactoryBot.create(:user)
    @posts = FactoryBot.create_list(:post, 10, user: @user, content_html: "<h1>Teste</h1>")
  end

  describe "as a not logged user", type: :feature do
    it "should see posts when enter posts index" do
      visit '/posts'
      expect(page).to have_content 'Titulo'
    end

    it "should not see button 'create a post' when enter index" do
      visit '/posts'
      expect(page).to_not have_content 'Write a post'
    end

    it "should not be able to enter `posts/new` page" do
      visit '/posts/new'
      expect(page).to have_content 'You need to sign in or sign up before continuing.'
    end
  end

  describe "as a logged user", type: :feature do
    before(:each) do
      login_as(@user, scope: :user)
    end

    it "should see button 'create a post' when enter index" do
      visit '/posts'
      expect(page).to have_content 'Write a post'
    end

    it "should 'create a post'" do
      visit '/posts/new'
      fill_in 'post_title', with: "TestTitle"
      fill_in 'post_content_md', with: "#TEST"
      click_button "Create Post"
      expect(page).to have_content 'TestTitle'
    end
  end
end
