require 'rails_helper'

context 'PostsController' do
  before :each do
    @user = FactoryBot.create(:user)
    @posts = FactoryBot.create_list(:post, 10, user: @user)
  end

  describe "as a not logged user", type: :feature do
    it "should see posts when enter posts index" do
      visit '/posts'
      expect(page).to have_content 'Titulo'
    end

    it "should not see button 'create a post' when enter index and its not logged in" do
      visit '/posts'
      expect(page).to_not have_content 'Write a post'
    end

    it "should not be able to enter `posts/new` page when its not logged in" do
      visit '/posts/new'
      expect(page).to have_content 'You need to sign in or sign up before continuing.'
    end
  end

  describe "as a logged user", type: :feature do
    before(:each) do
      login_as(@user, scope: :user)
    end

    it "should see button 'create a post' when enter index and its logged in" do
      visit '/posts'
      expect(page).to have_content 'Write a post'
    end
  end
end
