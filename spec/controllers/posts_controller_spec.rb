require 'rails_helper'

context 'PostController' do
  describe "the create process", type: :feature do
    before :each do
      @user = FactoryBot.create(:user)
      @posts = FactoryBot.create_list(:post, 10, user: @user)
    end

    it "signs me in" do
      visit '/posts'

      expect(page).to have_content 'Titulo'
    end
  end
end
